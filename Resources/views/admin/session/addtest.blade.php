@extends('layouts.admin')
@section('page-title','')
@section('breadcrumb')
    @include('admin.partials.crumb',[
    'crumbs'=>[
            route('admin.dashboard')=>__('default.dashboard'),
                 adminUrl(['controller'=>'student','action'=>'sessions'])=>__lang('Courses'),
            adminUrl(['controller'=>'session','action'=>'tests','id'=>$id])=>__lang('Tests'),
            '#'=>$crumbLabel
        ]])
@endsection

@section('content')
    <div class="card">
    <div class="card-body">
        <form class="form" action="{{ selfURL() }}" method="post">
            @csrf
            <div class="form-group">
                {{ formLabel($form->get('test_id')) }}
                {{ formElement($form->get('test_id')) }}
                <p class="help-block">{{ formElementErrors($form->get('test_id')) }}</p>
            </div>


            <div class="form-group">
                {{ formLabel($form->get('opening_date')) }}
                <div id="datepicker1" class="input-group date" > 
                    <input class="form-control" type="text" id="opening_date" name="opening_date" value="@isset($opening_date) {{ $opening_date }}@endisset()" readonly/> 
                    <span class="input-group-addon"> 
                        <i class="glyphicon glyphicon-calendar"></i> 
                    </span> 
                </div>
                {{--  {{ formElement($form->get('opening_date')) }}
                <p class="help-block">{{ formElementErrors($form->get('opening_date')) }}</p>  --}}
            </div>



            <div class="form-group">
                {{ formLabel($form->get('closing_date')) }}
                <div id="datepicker2" class="input-group date" > 
                    <input class="form-control" type="text" id="closing_date" name="closing_date" value="@isset($closing_date) {{ $closing_date }}@endisset()" readonly/> 
                    <span class="input-group-addon"> 
                        <i class="glyphicon glyphicon-calendar"></i> 
                    </span> 
                </div>
                {{--  {{ formElement($form->get('closing_date')) }}
                <p class="help-block">{{ formElementErrors($form->get('closing_date')) }}</p>  --}}
            </div>




            <div class="form-footer">
                <button type="submit" class="btn btn-block btn-lg btn-primary">{{__lang('save')}}</button>
            </div>
        </form>

    </div>
    </div>


  




@endsection

@section('header')
    <link rel="stylesheet" href="{{ basePath().'/client/vendor/pickadate/themes/default.date.css' }}">
    <link rel="stylesheet" href="{{ basePath().'/client/vendor/pickadate/themes/default.time.css' }}">
    <link rel="stylesheet" href="{{ basePath().'/client/vendor/pickadate/themes/default.css' }}">
@endsection

@section('footer')
    <script type="text/javascript" src="{{ basePath() }}/client/vendor/pickadate/picker.js"></script>
    <script type="text/javascript" src="{{ basePath() }}/client/vendor/pickadate/picker.date.js"></script>
    <script type="text/javascript" src="{{ basePath() }}/client/vendor/pickadate/picker.time.js"></script>
    <script type="text/javascript" src="{{ basePath() }}/client/vendor/pickadate/legacy.js"></script>
    <script>
        /*$(function(){
            $('.date').pickadate({
                format: 'yyyy-mm-dd'
            });
        });  */
    </script>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css"> 
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script> 
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> 
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script> 
     <script> 
     $(function () { 
 
            $("#datepicker1").datepicker({  
                 startDate: new Date(),
                 format: 'yyyy-mm-dd'
             });
             
             $("#datepicker2").datepicker({  
                 startDate: new Date(),
                 format: 'yyyy-mm-dd'
             });
             
     }); 
     </script> 





@endsection
