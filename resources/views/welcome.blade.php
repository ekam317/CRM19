@extends('layouts.app')

@section('content')
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="col-md-12 text-center mb-4 mt-4">
                    <h1 class="">CRM</h1>
                </div>
                <div class="card col-md-8 m-auto">

                    <div class="card-body">
                        <form method="POST" action="{{ route('login') }}">
                            @csrf

                            <div class="form-group">
                                <label for="email">{{ __('Username') }}</label>
                                <input id="email" type="text" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                    <strong>{{ $errors->first('email') }}</strong>
                                </span>
                                @endif
                            </div>

                            <div class="form-group">
                                <label for="password">{{ __('Password') }}</label>
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                                @endif
                            </div>

                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">
                                    {{ __('Login') }}
                                </button>
                            </div>
                            <div class="form-group row">
                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif
                            </div>
                        </form>
                    </div>

                </div>
                <div class="col-md-12 text-center mt-5">
                    Not a customer? <a class="btn btn-link"  href="{{ route('register') }}">{{ __('Register') }}</a>
                </div>
                <div class="col-md-12 text-center mt-5">
                    <span class="small">© 2019 CRM. All rights reserved. | <a href="">Privacy</a></span>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <img src="{{ asset('image/bg.png') }}" alt="" style="height: 100%; width: 100%;">
                    {{--<div class="home-right-side"></div>--}}
                </div>
            </div>
        </div>
    </div>
@endsection