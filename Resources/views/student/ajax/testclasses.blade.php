<table class="table table-stripped">
    <thead>
    <tr>
        <th>{{  __lang('Class')  }}</th>
        {{--  <th>{{  __lang('Date')  }}</th>
        <th>{{  __lang('Starts')  }}</th>
        <th>{{  __lang('Ends')  }}</th>  --}}
        <th>{{  __('Acknowledge')  }}</th>
        {{--  <th>{{  __lang('Venue')  }}</th>  --}}
    </tr>
    </thead>
    <tbody>
    @php $sum = []; $flag = 0 @endphp
    @php $i=0; foreach($rowset as $row2):  @endphp
    @php   $sum[$i++] = $i;   @endphp
    <tr>
        
        <td>
            @if($row2->is_acknowledge == 1)
            <a onclick="hideAndShow({{$i}})" data-toggle="modal" class="btn btn-primary accept" id="question{{$i}}" data-target="#classModal{{  $row2->id  }}" href="javaScript::void()" >{{  $row2->name }}</a>
            @else
            @php if($flag == 0): $flag = 1; @endphp
           <a onclick="hideAndShow({{$i}})" data-toggle="modal" class="btn btn-primary accept" id="question{{$i}}" data-target="#classModal{{  $row2->id  }}" href="javaScript::void()" >{{  $row2->name }}</a>
            @php else: @endphp
            <a onclick="hideAndShow({{$i}})" data-toggle="modal" class="btn btn-primary disabled" id="question{{$i}}" data-target="#classModal{{  $row2->id  }}" href="javaScript::void()" >{{  $row2->name }}</a>
            @php endif; @endphp 
           @endif
           <!-- Modal -->
            <div class="modal fade" id="classModal{{  $row2->id  }}" tabindex="-1" role="dialog" aria-labelledby="classModal{{  $row2->id  }}Label">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="classModal{{  $row2->id  }}Label">{{  $row2->name  }}</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                @php  if(!empty($row2->picture)):  @endphp
                                <div class="col-md-3">
                                    <a href="#">
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
                            @if($row2->is_acknowledge == 0)
                            <button type="button" class="btn btn-info questionAck{{$i}}" onclick="acknowledge({{$row2->lesson_id}},{{$row2->course_id}})" data-dismiss="modal">{{  __('I Acknowledge')  }}</button>
                             @else
                             <button type="button" class="btn btn-success"><i class="fa fa-check" aria-hidden="true">{{  __('Acknowledged')  }}</i></button>
                             @endif
                        </div>
                    </div>
                </div>
            </div>
        </td>
        {{--  <td>{{   showDate('d/m/Y',$row2->lesson_date) }}</td>
        <td>{{  (!empty($row2->lesson_start) ? $row2->lesson_start : '') }}</td>
        <td>{{  (!empty($row2->lesson_end) ? $row2->lesson_end : '') }}</td>  --}}
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
        {{--  <td>
           @php  if($row2->type=='c'):  @endphp
            {{  __lang('Online')  }}
            @php  if( (empty($row2->lesson_date) || stamp($row2->lesson_date) < time()) && $studentSessionTable->enrolled($studentId,$id) ): @endphp
            <a class="btn btn-primary float-right" href="{{  route('student.course.class',['course'=>$row2->course_id,'lesson'=>$row2->lesson_id])  }}"><i class="fa fa-play"></i> {{  __lang('Start Class')  }}</a>
            @php  endif;  @endphp
            @php  else:   
            $sessionVenue = isset($sessionVenue) ? $sessionVenue : '';
            @endphp
            {{  empty($row2->lesson_venue)? $sessionVenue: $row2->lesson_venue }}
            @php  endif;  @endphp
        </td>  --}}
    </tr>
    @php endforeach; @endphp
    </tbody>
</table> 




