<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\http\request;
use Illuminate\Support\Facades\DB;
use App\Produto as Produto;

class CrudController extends Controller
{

    public function cadastraProdutos(Request $r){
        if ($r->isMethod('get')){
            return view('cadastraProdutos');
        }
        $produto = new Produto;
        $produto->nomeProduto = $r->inputNome;
        $produto->estoqueProduto = $r->inputEstoque;
        $produto->skuProduto = $r->inputSku;
        $produto->valorProduto = $r->inputPreco;
        $produto->valorDescontoProduto = $r->inputPrecoDesconto;
        $produto->descricaoProduto = $r->inputDescricao;

        

        $produto->dataCriacaoProduto = date("Y-m-d H:i:s");
        $produto->dataAlteracaoProduto = date("Y-m-d H:i:s");
        if (isset($r->destaque)){
            $produto->destaqueProduto = true;
        }
        $produto->fotos()->localFoto = "algo";

        $produto->save();


        //$produto->fotos()->saveMany("salvou alguma coisa aqui");

        return view('cadastraprodutos',['resultado' => "cadastro efetuado com sucesso"]);
    }
    
}