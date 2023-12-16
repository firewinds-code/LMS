@extends('layouts.admin')

@section('pageTitle', __('default.role') . ': ' . $role->name)
@section('innerTitle', __('default.role') . ': ' . $role->name)
@section('breadcrumb')
    @include('admin.partials.crumb', [
        'crumbs' => [
            route('admin.dashboard') => __('default.dashboard'),
            route('admin.roles.index') => __lang('roles'),
            '#' => __lang('show'),
        ],
    ])
@endsection
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div>
                    <div>

                        @php
                            $hidePermisssiongroup = ['settings', 'certificates', 'discussions', 'resource'];
                            $hidePermission = ['add_class_group', 'edit_class_group', 'delete_class_group', 'view_class_groups', 'view_attendance_sheet', 'view_transactions', 'view_payments', 'view_instructors', 'set_instructors', 'view_course_categories', 'add_course_category', 'edit_course_category', 'delete_course_category', 'export_student_attendance', 'message_students', 'view_forum_topics', 'add_forum_topic', 'view_forum_topic', 'reply_forum_topic', 'manage_class_downloads', 'manage_lecture_downloads'];
                        @endphp
                        <form method="POST" action="{{ url('admin/roles' . '/' . $role->id) }}" accept-charset="UTF-8"
                            class="int_inlinedisp">

                            <a href="{{ url('/admin/roles') }}" title="@lang('default.back')"><button type="button"
                                    class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i>
                                    @lang('default.back')</button></a>
                            <a href="{{ url('/admin/roles/' . $role->id . '/edit') }}"><button type="button"
                                    class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                    @lang('default.edit')</button></a>

                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button type="submit" class="btn btn-danger btn-sm" title="@lang('default.delete')"
                                onclick="return confirm(&quot;@lang('default.confirm-delete')?&quot;)"><i class="fa fa-trash-o"
                                    aria-hidden="true"></i> @lang('default.delete')</button>
                        </form>
                        <br />
                        <br />

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th> @lang('default.name') </th>
                                        <td> {{ $role->name }} </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <h1>@lang('default.permissions')</h1>

                        @foreach (\App\PermissionGroup::orderBy('sort_order')->get() as $group)
                            @if ($role->permissions()->where('permission_group_id', $group->id)->count() > 0)
                                <div class="card">
                                    <div class="card-header">
                                        {{-- @lang('default.' . $group->name) --}}
                                        @if ($group->name == 'student')
                                            {{ __('trainee') }}
                                        @else
                                            @lang('default.' . $group->name)
                                        @endif
                                    </div>
                                    <div class="card-body">
                                        <ul class="list-group">
                                            @foreach ($group->permissions as $permission)
                                                @if (in_array($permission->name, $hidePermission))
                                                    @continue
                                                @endif
                                                @if ($role->permissions()->find($permission->id))
                                                    @if ($permission->name == 'view_students')
                                                        <li class="list-group-item"> {{ __('view_trainee') }} </li>
                                                    @elseif($permission->name == 'add_student')
                                                        <li class="list-group-item"> {{ __('add_trainee') }} </li>
                                                    @elseif($permission->name == 'edit_student')
                                                        <li class="list-group-item"> {{ __('edit_trainee') }} </li>
                                                    @elseif($permission->name == 'delete_student')
                                                        <li class="list-group-item"> {{ __('delete_trainee') }} </li>
                                                    @elseif($permission->name == 'view_student')
                                                        <li class="list-group-item"> {{ __('view_trainees') }} </li>
                                                    @else
                                                        <li class="list-group-item">@lang('perm.' . $permission->name)</li>
                                                    @endif
                                                @endif
                                            @endforeach
                                        </ul>

                                    </div>
                                </div>
                            @endif
                        @endforeach



                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
