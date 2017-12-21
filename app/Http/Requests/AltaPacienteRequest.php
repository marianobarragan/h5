<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AltaPacienteRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        if (auth()->check()){
            return true;
        } 
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'id_documento' => 'required|integer',
            'id_estado_civil' => 'required|integer',
            'numero_historia_clinica' => 'nullable|integer',
            'id_sexo' => 'integer',
            'hora_nacimiento' => 'nullable|date_format:H:i',
            'fecha_nacimiento' => 'nullable|date',
            'id_pais' => 'nullable|integer',
            'esta_vivo' => 'boolean',
            'fecha_fallecimiento' => 'nullable|date',
            'telefono_fijo' => 'nullable|integer',
            'telefono_celular' => 'nullable|integer',
            'telefono_fijo' => 'nullable|integer',
            //'id_persona_responsable' => 'nullable|integer',
            'id_obra_social' => 'nullable|integer',
            'mail' => 'nullable|email',
            'red_social' => 'nullable|url',
            //'id_enfermedad' => 'nullable|integer',
            'id_user' => 'nullable|integer',
            'valor_obra_social' => 'nullable',
            'valor_documento' => 'nullable',
            'nombre' => 'nullable|alpha',
            'apellido' => 'nullable|alpha',

            'calle' => 'nullable|alpha',
            'altura' => 'nullable|integer',
            'distrito' => 'nullable|alpha',
            'barrio' => 'nullable|alpha'
        ];
    }
}
