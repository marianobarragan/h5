<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use \App\Rules\LetrasYEspacios;

class DomicilioRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return auth()->check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'calle' => ['nullable', new LetrasYEspacios],
            'altura' => 'nullable|integer',
            'distrito' => ['nullable', new LetrasYEspacios],
            'barrio' => ['required', new LetrasYEspacios]
        ];
    }
}
