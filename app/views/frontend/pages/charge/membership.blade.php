@extends('frontend.layouts.default')

@section('content')
<div id="signupbox" style="margin-top:50px" class="mainbox mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
    <div class="panel panel-info">
        <div class="panel-heading">
            <div class="panel-title">Sign Up</div>

        </div>
        <div class="panel-body" >
            {{ Form::open( ['class' => 'form-horizontal', 'role' => 'form', 'id' => 'subscription-form' ] )}}
            <div class="payment-errors"></div>
            <div id="signupalert" style="display:none" class="alert alert-danger">
                <p>Error:</p>
                <span></span>
            </div>

            <div class="form-group">
                {{ Form::label( 'subscription', 'Subscription plan', [ 'class' => 'col-md-3 control-label' ])}}
                <div class="col-md-9">
                    {{ Form::select( 'subscription' , [ 'basic' => '(BASIC) 10$ per month', 'gold' => '(GOLD) 40$ per month' ], 'gold', [ 'class' => 'form-control' ])}}
                </div>
            </div>

            <div class="form-group">
                {{ Form::label( 'ccn', 'Credit card number', [ 'class' => 'col-md-3 control-label' ])}}
                <div class="col-md-9">
                    {{ Form::text('ccn', '', [ 'class' => 'form-control', 'data-stripe' => 'number' ])}}
                </div>
            </div>

            <div class="form-group">
                {{ Form::label( 'expiration', 'Expiration date', [ 'class' => 'col-md-3 control-label' ])}}
                <div class="col-md-6">
                    {{ Form::selectMonth('month', 'junuary', [ 'class' => 'form-control', 'data-stripe' => 'exp-month' ])}}
                </div>
                <div class="col-md-3">
                    {{ Form::selectRange('year', 2014, 2029, 2014, [ 'class' => 'form-control', 'data-stripe' => 'exp-year' ])}}
                </div>
            </div>

            <div class="form-group">
                {{ Form::label( 'cvc', 'CVC number', [ 'class' => 'col-md-3 control-label' ])}}
                <div class="col-md-3">
                    {{ Form::text('cvc', '', [ 'class' => 'form-control', 'data-stripe' => 'cvc' ])}}
                </div>
            </div>

            <div class="form-group">
                <!-- Button -->
                <div class="col-md-offset-3 col-md-9">
                    {{ Form::button('<i class="glyphicon glyphicon-hand-right"></i> &nbsp Sign Up', [ 'type' => 'submit', 'id'  => 'btn-signup', 'class' => 'btn btn-info'] ) }}
                </div>
            </div>
            {{ Form::close() }}
        </div> <!-- Panel body -->
    </div> <!-- Panel -->
</div> <!-- Signup box -->

@stop