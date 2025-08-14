<x-guest-layout>
    {{-- Padding kartu diatur untuk memberikan ruang yang cukup --}}
    <div class="px-8 py-10">

        <div class="flex justify-center mb-6">
            <a href="/">
                {{-- Anda bisa mengatur ukuran logo dengan class w- dan h- (misal: w-20 h-20) --}}
                <x-application-logo class="w-20 h-20 text-gray-500 fill-current" />
            </a>
        </div>

        <div class="mb-8 text-center">
            <p class="text-sm text-gray-600">Please sign in to your account.</p>
        </div>

        <x-auth-session-status class="mb-4" :status="session('status')" />

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div>
                <x-input-label for="email" :value="__('Email')" />
                <x-text-input id="email" class="block w-full mt-1" type="email" name="email" :value="old('email')" required autofocus />
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
            </div>

            <div class="mt-4">
                <x-input-label for="password" :value="__('Password')" />
                <x-text-input id="password" class="block w-full mt-1" type="password" name="password" required autocomplete="current-password" />
                <x-input-error :messages="$errors->get('password')" class="mt-2" />
            </div>

            <div class="block mt-4">
                <label for="remember_me" class="inline-flex items-center">
                    <input id="remember_me" type="checkbox" class="text-indigo-600 border-gray-300 rounded shadow-sm focus:ring-indigo-500" name="remember">
                    <span class="text-sm text-gray-600 ms-2">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="mt-6">
                <x-primary-button class="justify-center w-full">
                    {{ __('Log in') }}
                </x-primary-button>
            </div>

            <div class="mt-6 text-center">
                <p class="text-sm text-gray-600">
                    {{ __("Don't have an account?") }}
                    <a href="{{ route('register') }}" class="font-medium text-indigo-600 hover:text-indigo-500 hover:underline">
                        {{ __('Sign Up') }}
                    </a>
                </p>
            </div>
        </form>
    </div>
</x-guest-layout>
