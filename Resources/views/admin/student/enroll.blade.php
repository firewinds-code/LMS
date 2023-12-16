<style>
  .grey_color{
    color: green;
    background-color: grey;
  }
</style>

<form class="form" method="post" action="{{ adminUrl(array('controller'=>'student','action'=>'enroll','id'=>$id)) }}">
  @csrf
    <h5>{{ __lang('Enroll') }} {{ $student->name.' '.$student->last_name  }}</h5>
    {{--  <div style="padding-bottom: 10px">
        {{ formElement($select) }}

    </div>  --}}
    
    <div style="padding-bottom: 10px">
      <select class="form-control" name="course_id" required>
        <option value="">--Select a Session/Course -- </option>
        @foreach($rowset as $row)
            <option value="{{ $row->id }}" @if(App\Lib\Helpers::isEnroll($id, $row->id)) disabled class="grey_color"  @endif>{{ $row->name }}({{ courseType($row->type) }}) @if(App\Lib\Helpers::isEnroll($id, $row->id)) -- {{ __('Trainee Already Enrolled ') }}  @endif</option>
        @endforeach
      </select>

  </div>

    
    
    <button class="btn btn-primary" type="submit">{{ __lang('enroll') }}</button>
</form>

