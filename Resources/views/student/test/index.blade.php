@extends('layouts.student')
@section('pageTitle',$pageTitle)
@section('innerTitle',$pageTitle)
@section('breadcrumb')
    @include('admin.partials.crumb',[
    'crumbs'=>[
            route('student.dashboard')=>__lang('dashboard'),
            '#'=>$pageTitle
        ]])
@endsection
@section('content')
<!--breadcrumb-section ends-->
<!--container starts-->
<div class="card"   >
    <!--primary starts-->
    <div class="card-body">
       <div class="table-responsive">
         <table class="table table-hover">
            <thead>
            <tr>
                <th>{{  __lang('Test')  }}</th>
                <th>{{  __lang('Questions')  }}</th>
                <th>{{  __lang('Minutes Allowed')  }}</th>
                <th>{{  __lang('multiple-attempts-allowed')  }}</th>
                <th>{{  __lang('passmark')  }}</th>
                <th  >{{  __lang('Actions')  }}</th>
            </tr>
            </thead>
            <tbody>
            @php foreach($paginator as $row):  @endphp
                <tr>
                    <td>{{  $row->name }}</td>
                    <td>{{  $questionTable->getTotalQuestions($row->test_id) }}</td>
                    <td>{{  empty($row->minutes)?__lang('Unlimited'):$row->minutes }}</td>
                    <td>{{  boolToString($row->allow_multiple) }}</td>
                    <td>{{  ($row->passmark > 0)? $row->passmark.'%':__lang('Ungraded') }}</td>
                    <td >

                     
                        @php 
                          $courseTypeID = courseId($row->test_id);



                        $attendanceTable = new \App\V2\Model\AttendanceTable();
                        $sessionLessonTable = new \App\V2\Model\SessionLessonTable();
                        $totalClasses = $sessionLessonTable->getSessionRecords($courseTypeID['courseId'],'c')->count();
                       //get tottal attended
                        $attended = $attendanceTable->getTotalDistinctForStudentInSession($id,$courseTypeID['courseId']);
                    if(!empty($totalClasses)){
                         $percentage= ($attended/$totalClasses) * 100;
                     }
                     else{
                         $percentage=0;
                     }
                     @endphp
                       @if((!$studentTest->hasTest($row->test_id,$id) || !empty($row->allow_multiple))  &&($percentage == 100) && ($courseTypeID['courseType'] == "c"))
                        <a href="{{  route('student.test.taketest',array('id'=>$row->test_id)) }}" class="btn btn-primary " >
                            <i class="fa fa-play"></i> {{  __lang('Take Test')  }}
                        </a>  
                        @endif
                        
                        @if((!$studentTest->hasTest($row->test_id,$id) || !empty($row->allow_multiple))  &&($percentage < 100) && ($courseTypeID['courseType'] == "c"))
                                <button class="btn btn-info">Please Attend All Classes  Lecture</button>
                        @endif

                        {{--  @if(classTestOpen($row->test_id,$id) > 0 && $courseTypeID['courseType'] == "s" && $courseTypeID['courseType'] != "c")
                            <button class="btn btn-info">Please Acknowledge All Classes</button>
                        @else
                        @if((!$studentTest->hasTest($row->test_id,$id) || !empty($row->allow_multiple))  && ($courseTypeID['courseType'] == "s"))
                                <a href="{{  route('student.test.taketest',array('id'=>$row->test_id)) }}" class="btn btn-primary " ><i class="fa fa-play"></i> {{  __lang('Take Test')  }}
                                </a>  
                        @endif  --}}

                            @if($studentTest->hasTest($row->test_id,$id) && $row->show_result==1)
                                    <a href="{{  route('student.test.testresults',array( 'id'=>$row->test_id)) }}" class="btn btn-success " ><i class="fa fa-list-ul"></i> {{  __lang('Your Results')  }}
                                    </a>
                            @endif
                        {{--  @endif  --}}
                    </td>

                </tr>
            @php  endforeach;  @endphp

            </tbody>
        </table>
</div>
        @php
        // add at the end of the file after the table
        echo paginationControl(
        // the paginator object
            $paginator,
            // the scrolling style
            'sliding',
            // the partial to use to render the control
            null,
            // the route to link to when a user clicks a control link
            route('student.test.index')
        );
         @endphp
    </div>


</div>

<!--container ends-->

@endsection
