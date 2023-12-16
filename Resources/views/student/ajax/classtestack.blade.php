<table class="table table-hover">
    <thead>
    <tr>
        <th style="min-width: 100px">{{  __lang('test')  }}</th>
        <th>{{  __lang('questions')  }}</th>
        <th>{{  __lang('opens')  }}</th>
        <th>{{  __lang('closes')  }}</th>
        <th>{{  __lang('minutes-allowed')  }}</th>
        <th>{{  __lang('multiple-attempts-allowed')  }}</th>
        <th>{{  __lang('passmark')  }}</th>
        <th >{{  __lang('actions')  }}</th>
    </tr>
    </thead>
    <tbody>
    @php  foreach($tests as $testRow):  @endphp
    @php  if($testRow->test_status == 1): @endphp
    <tr>
        <td>{{  $testRow->name }}</td>
        <td>{{  $questionTable->getTotalQuestions($testRow->test_id) }}</td>
        <td>@php  if(!empty($testRow->opening_date)) echo showDate('d/M/Y',$testRow->opening_date);  @endphp</td>
        <td>@php  if(!empty($testRow->closing_date))  echo showDate('d/M/Y',$testRow->closing_date);  @endphp</td>
        <td>{{  empty($testRow->minutes)?__lang('unlimited'):$testRow->minutes }}</td>
        <td>{{  boolToString($testRow->allow_multiple) }}</td>
        <td>{{  ($testRow->passmark > 0)? $testRow->passmark.'%':__lang('ungraded') }}</td>
        <td>
            @php
              $days  = (strtotime($testRow->opening_date) - strtotime(date('d-m-Y'))) / (60 * 60 * 24);
              $closingDate = (strtotime($testRow->closing_date) - strtotime(date('d-m-Y'))) / (60 * 60 * 24);
              $isAck = classAckTestOpen($studentCourse->course_id);
              $attempted = $studentTest->hasTest($testRow->test_id, $studentId);
              $allow = $testRow->allow_multiple;
              if((($days == 0) || !($closingDate < 0)) && (($closingDate == 0) || !($closingDate < 0)) && (($allow == 0 && $attempted != 1) || ($allow == 1))) :
            @endphp
            @if($isAck == 0)
            <a  target="_blank" href="{{  route('student.test.taketest',array('id'=> $testRow->test_id)) }}" class="btn btn-primary " >{{  __lang('take-test')  }}</a>
            @else
            <button class="btn btn-primary">Please Acknowledge All Classes</button>
            @endif
            @php  endif;  @endphp
            @php if($days >= 1 ) : @endphp
            <button class="btn btn-primary">test will open on {{date('d-m-Y',strtotime($testRow->opening_date))}}</button>
            @php endif; @endphp
            @php if(($days < 0) && ($closingDate < 0) && ($attempted != 1)) : @endphp
            <button class="btn btn-danger disabled">Link Expired</button>
            @php endif; @endphp

            @if($allow == 0 && $attempted == 1)
            <button class="btn btn-danger disabled">Already Attempted</button>
            @endif
        </td>
    </tr>
    @php  endif;  @endphp
    @php  endforeach;  @endphp
   </tbody>
</table>


