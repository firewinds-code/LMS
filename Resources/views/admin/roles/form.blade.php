<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
    <label for="name" class="control-label">@lang('default.name')</label>
    <input class="form-control" name="name" type="text" id="name"
        value="{{ old('name', isset($role->name) ? $role->name : '') }}">
    {!! clean($errors->first('name', '<p class="help-block">:message</p>')) !!}
</div>

<h3>@lang('default.permissions')</h3>
<div class="" id="accordionExample">

    @php
        $hidePermisssiongroup = ['settings', 'certificates', 'discussions', 'resource'];
        $hidePermission = ['add_class_group', 'edit_class_group', 'delete_class_group', 'view_class_groups', 'view_attendance_sheet', 'view_transactions', 'view_payments', 'view_instructors', 'set_instructors', 'view_course_categories', 'add_course_category', 'edit_course_category', 'delete_course_category', 'export_student_attendance', 'message_students', 'view_forum_topics', 'add_forum_topic', 'view_forum_topic', 'reply_forum_topic', 'manage_class_downloads', 'manage_lecture_downloads'];
    @endphp

    @foreach (\App\PermissionGroup::orderBy('sort_order')->get() as $group)
        @if (in_array($group->name, $hidePermisssiongroup))
            @continue
        @endif
        <div class="accordion">
            <div class="accordion-header" id="headingThree{{ $group->id }}" data-toggle="collapse"
                data-target="#collapseThree{{ $group->id }}" aria-expanded="false"
                aria-controls="collapseThree{{ $group->id }}">
                <h4 class="mb-0">
                    {{--  @lang('default.'.$group->name)  --}}
                    @if ($group->name == 'student')
                        {{ __('trainee') }}
                    @else
                        @lang('default.' . $group->name)
                    @endif



                </h4>
            </div>
            <div id="collapseThree{{ $group->id }}" class="collapse"
                aria-labelledby="headingThree{{ $group->id }}" data-parent="#accordionExample">
                <div class="accordion-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>@lang('default.permission')</th>
                                <th>@lang('default.enabled')</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($group->permissions as $permission)
                                @if (in_array($permission->name, $hidePermission))
                                    @continue
                                @endif
                                <tr>
                                    <td>
                                        @if ($permission->name == 'view_students')
                                            {{ __('view_trainee') }}
                                        @elseif($permission->name == 'add_student')
                                            {{ __('add_trainee') }}
                                        @elseif($permission->name == 'edit_student')
                                            {{ __('edit_trainee') }}
                                        @elseif($permission->name == 'delete_student')
                                            {{ __('delete_trainee') }}
                                        @elseif($permission->name == 'view_student')
                                            {{ __('view_trainees') }}
                                        @else
                                            {{ $permission->name }}
                                        @endif

                                    </td>




                                    <td>
                                        <input type="checkbox" name="{{ $permission->id }}"
                                            value="{{ $permission->id }}"
                                            @if (isset($role) && $role->permissions()->find($permission->id)) checked @endif />
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    @endforeach

</div>
<br />
<div class="form-group">
    <input class="btn btn-primary" type="submit"
        value="{{ $formMode === 'edit' ? __('default.update') : __('default.create') }}">
</div>
