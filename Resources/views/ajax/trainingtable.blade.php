<table class="table table-stripped">
    <thead>
    <tr>
        <th>{{  __lang('Class')  }}</th>
        <th>{{  __lang('Date')  }}</th>
        <th>{{  __lang('Starts')  }}</th>
        <th>{{  __lang('Ends')  }}</th>
        <th>{{  __('Acknowledge')  }}</th>
        <th>{{  __lang('Venue')  }}</th>
    </tr>
    </thead>

    <tbody>
    @php  $sum = []; @endphp
    @php $i=0; foreach($rowset as $row2):  @endphp
    @php   $sum[$i++] = $i;   @endphp
    <tr>
        
        <td><a  data-toggle="modal" class="btn btn-primary question{{$i}}" id="question{{$i}}" data-target="#classModal{{  $row2->id  }}" href="javaScript::void()" >{{  $row2->name }}</a>
          
               
         
            <div class="modal fade" id="classModal{{$row2->id}}"  role="dialog" aria-labelledby="classModal{{$row2->id }}Label">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="classModal{{  $row2->id  }}Label">{{  $row2->name  }}</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                @php  if(!empty($row2->picture)):  @endphp
                                <div class="col-md-3">
                                    <a href="#" >
                                        <img class="img-responsive" src="{{  resizeImage($row2->picture,300,300,url('/')) }}" >
                                    </a>
                                </div>
                                @php  endif;  @endphp
                                <div class="col-md-{{  (empty($row2->picture)? '12':'9')  }}">
                                    <article>{!! $row2->description !!}</article>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success questionAck{{$i}}" data-dismiss="modal">{{  __('I Acknowledge')  }}</button>
                        </div>
                    </div>
                </div>
            </div>
                
        </td>
        <td>{{  showDate('d/m/Y',$row2->lesson_date) }}</td>
        <td>{{  (!empty($row2->lesson_start)? $row2->lesson_start : '') }}</td>
        <td>{{  (!empty(@$row2->lesson_end)? @$row2->lesson_end : '') }}</td>
        <th>
            <div class="btn-group dropup btn-group-xs">
                @if($row2->is_acknowledge == 1)
                <button type="button" class="btn btn-success">
                     {{__("Acknowledged")}}
                 </button>
                 @else
                <button type="button" class="btn btn-danger">
                   {{__("Pending")}}
                </button>
             @endif
            </div>
        </th>
        <td>
            @php  if($row2->type=='c'):  @endphp
            {{  __lang('Online')  }}
            @php  if( (empty($row2->lesson_date) || stamp($row2->lesson_date) < time()) && $studentSessionTable->enrolled($studentId,$id) ): @endphp
            <a class="btn btn-primary float-right" href="{{  route('student.course.class',['course'=>$row2->course_id,'lesson'=>$row2->lesson_id])  }}"><i class="fa fa-play"></i> {{  __lang('Start Class')  }}</a>
            @php  endif;  @endphp
            @php  else:  @endphp
            {{  empty($row2->lesson_venue)? $sessionVenue: $row2->lesson_venue }}
            @php  endif;  @endphp
        </td>
    </tr>
  
    @php endforeach;    @endphp
    </tbody>
</table>
<script src="{{asset('plugins/jquery/jquery.min.js')}}"></script>
<script>
function hideAndShow(value)
{
    crt_value = `#question${value}`;
    inc_value = `#question${value+1}`;
    $(crt_value).addClass('disabled');
    $(inc_value).removeClass('disabled');
 }
 

function acknowledge(classId, course_id)
{

    $.ajax({
          url:"{{url('student/ackclass')}}",
          type:"get",
          data:{id:classId,course_id:course_id},
         success:function(response)
         {
            if(response.success)
            {
                toastr.success(response.message);
                $('#htmltable').html(response.html);
            }
            if(response.error)
            {toastr.error(response.message);}
         }
         
    });
}


$(document).ready(function(){

$('.trainingTest').addClass("disabled");
$('.trainingTest').each(function(){
    if($(this).hasClass("disabled")){
            $(this).attr("href","javaScript::void(0)");
        }
});

var no_of_quetion = "<?php echo end($sum) ?>";

if(no_of_quetion >= 2)
{ 
    $('.question1').removeClass('disabled');
     for(i=2; i<=no_of_quetion;i++)
    {
         $('.question'+i).addClass('disabled');
    }
}

$('.questionAck1').click(function(){
            $('.question1').addClass('disabled');
            $('.question2').removeClass('disabled');
    });

$('.questionAck'+no_of_quetion).click(function(){
    $('.questionAck'+no_of_quetion).removeClass('disabled');
    const div = document.querySelector('.questionAck'+no_of_quetion);
        if(div.classList.contains('disabled'))
        {
            $('.trainingTest').addClass('disabled');
            $('.trainingTest').attr('href', 'javaScript::void(0)');
        }else{
            $('.trainingTest').removeClass('disabled');
            $('.trainingTest').attr('href', "{{  route('student.test.taketest',array('id'=>$testRow->test_id)) }}");
        } 
    });

});
</script>

