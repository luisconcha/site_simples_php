<?php

/**
 * File: controller.php
 * Author: Luis Alberto Concha Curay
 * E-mail: luvett11@gmail.com
 * Language: PHP
 * Date: 16/07/14
 * Time: 12:39
 * Project: estudo_php
 * Copyright: 2014
 */

namespace admin\app\controller;

require_once '../../../config.php';

$cpf   = filter_input( INPUT_POST, 'cpf', FILTER_SANITIZE_STRING );
$senha = filter_input( INPUT_POST, 'senha', FILTER_SANITIZE_STRING );
$acao  = filter_input( INPUT_POST, 'acao', FILTER_SANITIZE_STRING );
$conn  = conecta();


switch( $acao ) :
    case 'login':

        if( valida_cpf( $cpf ) ){
            $dadasUsuario = new Login();
            $resultado    =  $dadasUsuario->logarController($cpf, $senha, $conn);
            if( $resultado ) {
                echo 'logadoComSucesso';
            }
        }else{
            echo 'cpf_invalido';
        }
        break;

    case 'alterarCliente':
        $idCliente    = filter_input( INPUT_POST, 'idCliente', FILTER_SANITIZE_NUMBER_INT );
        $nomeCliente  = filter_input( INPUT_POST, 'nome', FILTER_SANITIZE_STRING );
        $emailCliente = filter_input( INPUT_POST, 'email', FILTER_SANITIZE_STRING );
        $dadosCliente = array(
            'id_cliente'   => $idCliente,
            'nome_cliente' => $nomeCliente,
            'email_cliente'=> $emailCliente
        );
        $cliente       = new Cliente();
        $updateCliente = $cliente->alterarCliente( $dadosCliente );
        if( $updateCliente ) {
            echo 'clienteAtualizadoSucesso';
        }else {
            echo 'erroAtualizarCliente';
        }
        break;

    case 'deletarCliente':
        $idCliente = filter_input( INPUT_POST, 'idCliente', FILTER_SANITIZE_NUMBER_INT );
        $cliente   = new Cliente();
        $deletarCliente = $cliente->deletarCliente( $idCliente );
        if( $deletarCliente ) {
            echo 'clienteDeletadoSucesso';
        }else {
            echo 'erroDeletarCliente';
        }
        break;

    case 'CadastrarCliente':
        $nomeCliente  = filter_input( INPUT_POST, 'nome', FILTER_SANITIZE_STRING );
        $emailCliente = filter_input( INPUT_POST, 'email', FILTER_SANITIZE_STRING );
        $dadosCliente = array(
            'nome_cliente' => $nomeCliente,
            'email_cliente'=> $emailCliente
        );
        $cliente = new Cliente();
        $cadastrarCliente = $cliente->cadastrarCliente( $dadosCliente );
        if( $cadastrarCliente ) {
            echo 'clienteCadastradoSucesso';
        }else {
            echo 'erroCadastrarCliente';
        }
        break;

    case 'CadastrarUsuario':
        $cpfUsuario   = filter_input( INPUT_POST, 'cpfUsuario', FILTER_SANITIZE_STRING );
        if( valida_cpf( $cpfUsuario ) ){
            $nomeUsuario   = filter_input( INPUT_POST, 'nomeUsuario', FILTER_SANITIZE_STRING );
            $senhaUsuario  = filter_input( INPUT_POST, 'senhaUsuario', FILTER_SANITIZE_STRING );
            $data_cadastro = date( 'Y-m-d H:i:s' );
            $sit_cancelado = filter_input( INPUT_POST, 'sit_cancelado' );
            $dadosUsuario  = array(
                'nome_usuario'  => $nomeUsuario,
                'cpf_usuario'   => $cpfUsuario,
                'senha_usuario' => $senhaUsuario,
                'dat_cadastro'  => $data_cadastro,
                'sit_cancelado' => $sit_cancelado
            );
            $usuario          = new Usuario();
            $cadastrarUsuario = $usuario->cadastrarUsuario( $dadosUsuario );
            if( $cadastrarUsuario ) {
                echo 'usuarioCadastradoSucesso';
            }else{
                echo 'erroCadastroUsuario';
            }
        }else{
            echo 'cpf_invalido';
        }
        break;

    case 'deletarUsuario':
        $idUsuario      = filter_input( INPUT_POST, 'idUsuario', FILTER_SANITIZE_NUMBER_INT );
        $usuario        = new Usuario();
        $deletarUsuario = $usuario->deletarUsuario( $idUsuario );
        if( $deletarUsuario ) {
            echo 'usuarioDeletadoSucesso';
        }else {
            echo 'erroDeletarUsuario';
        }
        break;

    case 'alterarUsuario':
        $idUsuario     = filter_input( INPUT_POST, 'idUsuario', FILTER_SANITIZE_NUMBER_INT );
        $nomeUsuario   = filter_input( INPUT_POST, 'nomeUsuario', FILTER_SANITIZE_STRING );
        $cpfUsuario    = filter_input( INPUT_POST, 'cpfUsuario', FILTER_SANITIZE_STRING );
        $senhaUsuario  = filter_input( INPUT_POST, 'senhaUsuario', FILTER_SANITIZE_STRING );
        $sit_cancelado = filter_input( INPUT_POST, 'idUsuario', FILTER_SANITIZE_STRING );
        $dadosUsuario  = array(
            'id_usuario'   => $idUsuario,
            'nome_usuario' => $nomeUsuario,
            'cpf_usuario'  => $cpfUsuario,
            'senha_usuario'=> $senhaUsuario,
            'sit_cancelado'=> $sit_cancelado,
        );
        $usuario       = new Usuario();
        $updateUsuario = $usuario->alterarUsuario( $dadosUsuario );
        if( $updateUsuario ) {
            echo 'usuarioAtualizadoSucesso';
        }else {
            echo 'erroAtualizarUsuario';
        }
        break;
endswitch;


