
ý
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"serve*2.1.02unknown8ßà

cnn__encoder_1/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_namecnn__encoder_1/dense_6/kernel

1cnn__encoder_1/dense_6/kernel/Read/ReadVariableOpReadVariableOpcnn__encoder_1/dense_6/kernel* 
_output_shapes
:
*
dtype0

cnn__encoder_1/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namecnn__encoder_1/dense_6/bias

/cnn__encoder_1/dense_6/bias/Read/ReadVariableOpReadVariableOpcnn__encoder_1/dense_6/bias*
_output_shapes	
:*
dtype0

NoOpNoOp
ô
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¯
value¥B¢ B
j
fc
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
		variables

regularization_losses
trainable_variables
	keras_api

0
1
 

0
1

	variables
metrics

layers
non_trainable_variables
layer_regularization_losses
regularization_losses
trainable_variables
 
WU
VARIABLE_VALUEcnn__encoder_1/dense_6/kernel$fc/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEcnn__encoder_1/dense_6/bias"fc/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1

		variables
metrics

layers
non_trainable_variables
layer_regularization_losses

regularization_losses
trainable_variables
 

0
 
 
 
 
 
 

serving_default_input_1Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿ@
â
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1cnn__encoder_1/dense_6/kernelcnn__encoder_1/dense_6/bias*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*/
config_proto

CPU

GPU2 *0J 8*-
f(R&
$__inference_signature_wrapper_116033
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ð
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename1cnn__encoder_1/dense_6/kernel/Read/ReadVariableOp/cnn__encoder_1/dense_6/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: */
config_proto

CPU

GPU2 *0J 8*(
f#R!
__inference__traced_save_116104
Ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecnn__encoder_1/dense_6/kernelcnn__encoder_1/dense_6/bias*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*
_output_shapes
: */
config_proto

CPU

GPU2 *0J 8*+
f&R$
"__inference__traced_restore_116122Ë
$
â
C__inference_dense_6_layer_call_and_return_conditional_losses_116067

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/transpose_1/perm­
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0* 
_output_shapes
:
2
Tensordot/transpose_1
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
Tensordot/Reshape_1/shape
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2
Tensordot/Reshape_1
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:& "
 
_user_specified_nameinputs

©
(__inference_dense_6_layer_call_fn_116074

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*/
config_proto

CPU

GPU2 *0J 8*L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1160022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs
þ
ò
"__inference__traced_restore_116122
file_prefix2
.assignvariableop_cnn__encoder_1_dense_6_kernel2
.assignvariableop_1_cnn__encoder_1_dense_6_bias

identity_3¢AssignVariableOp¢AssignVariableOp_1¢	RestoreV2¢RestoreV2_1Ð
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*]
valueTBRB$fc/kernel/.ATTRIBUTES/VARIABLE_VALUEB"fc/bias/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
RestoreV2/shape_and_slicesµ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp.assignvariableop_cnn__encoder_1_dense_6_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1¤
AssignVariableOp_1AssignVariableOp.assignvariableop_1_cnn__encoder_1_dense_6_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1¨
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slicesÄ
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_2

Identity_3IdentityIdentity_2:output:0^AssignVariableOp^AssignVariableOp_1
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2

Identity_3"!

identity_3Identity_3:output:0*
_input_shapes

: ::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:+ '
%
_user_specified_namefile_prefix
7

!__inference__wrapped_model_115964
input_1<
8cnn__encoder_1_dense_6_tensordot_readvariableop_resource:
6cnn__encoder_1_dense_6_biasadd_readvariableop_resource
identity¢-cnn__encoder_1/dense_6/BiasAdd/ReadVariableOp¢/cnn__encoder_1/dense_6/Tensordot/ReadVariableOpÝ
/cnn__encoder_1/dense_6/Tensordot/ReadVariableOpReadVariableOp8cnn__encoder_1_dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype021
/cnn__encoder_1/dense_6/Tensordot/ReadVariableOp
%cnn__encoder_1/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2'
%cnn__encoder_1/dense_6/Tensordot/axes
%cnn__encoder_1/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2'
%cnn__encoder_1/dense_6/Tensordot/free
&cnn__encoder_1/dense_6/Tensordot/ShapeShapeinput_1*
T0*
_output_shapes
:2(
&cnn__encoder_1/dense_6/Tensordot/Shape¢
.cnn__encoder_1/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.cnn__encoder_1/dense_6/Tensordot/GatherV2/axisÄ
)cnn__encoder_1/dense_6/Tensordot/GatherV2GatherV2/cnn__encoder_1/dense_6/Tensordot/Shape:output:0.cnn__encoder_1/dense_6/Tensordot/free:output:07cnn__encoder_1/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)cnn__encoder_1/dense_6/Tensordot/GatherV2¦
0cnn__encoder_1/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0cnn__encoder_1/dense_6/Tensordot/GatherV2_1/axisÊ
+cnn__encoder_1/dense_6/Tensordot/GatherV2_1GatherV2/cnn__encoder_1/dense_6/Tensordot/Shape:output:0.cnn__encoder_1/dense_6/Tensordot/axes:output:09cnn__encoder_1/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+cnn__encoder_1/dense_6/Tensordot/GatherV2_1
&cnn__encoder_1/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2(
&cnn__encoder_1/dense_6/Tensordot/ConstÜ
%cnn__encoder_1/dense_6/Tensordot/ProdProd2cnn__encoder_1/dense_6/Tensordot/GatherV2:output:0/cnn__encoder_1/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: 2'
%cnn__encoder_1/dense_6/Tensordot/Prod
(cnn__encoder_1/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(cnn__encoder_1/dense_6/Tensordot/Const_1ä
'cnn__encoder_1/dense_6/Tensordot/Prod_1Prod4cnn__encoder_1/dense_6/Tensordot/GatherV2_1:output:01cnn__encoder_1/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2)
'cnn__encoder_1/dense_6/Tensordot/Prod_1
,cnn__encoder_1/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,cnn__encoder_1/dense_6/Tensordot/concat/axis£
'cnn__encoder_1/dense_6/Tensordot/concatConcatV2.cnn__encoder_1/dense_6/Tensordot/free:output:0.cnn__encoder_1/dense_6/Tensordot/axes:output:05cnn__encoder_1/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2)
'cnn__encoder_1/dense_6/Tensordot/concatè
&cnn__encoder_1/dense_6/Tensordot/stackPack.cnn__encoder_1/dense_6/Tensordot/Prod:output:00cnn__encoder_1/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2(
&cnn__encoder_1/dense_6/Tensordot/stack×
*cnn__encoder_1/dense_6/Tensordot/transpose	Transposeinput_10cnn__encoder_1/dense_6/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2,
*cnn__encoder_1/dense_6/Tensordot/transposeû
(cnn__encoder_1/dense_6/Tensordot/ReshapeReshape.cnn__encoder_1/dense_6/Tensordot/transpose:y:0/cnn__encoder_1/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
(cnn__encoder_1/dense_6/Tensordot/Reshape·
1cnn__encoder_1/dense_6/Tensordot/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       23
1cnn__encoder_1/dense_6/Tensordot/transpose_1/perm
,cnn__encoder_1/dense_6/Tensordot/transpose_1	Transpose7cnn__encoder_1/dense_6/Tensordot/ReadVariableOp:value:0:cnn__encoder_1/dense_6/Tensordot/transpose_1/perm:output:0*
T0* 
_output_shapes
:
2.
,cnn__encoder_1/dense_6/Tensordot/transpose_1µ
0cnn__encoder_1/dense_6/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0cnn__encoder_1/dense_6/Tensordot/Reshape_1/shapeû
*cnn__encoder_1/dense_6/Tensordot/Reshape_1Reshape0cnn__encoder_1/dense_6/Tensordot/transpose_1:y:09cnn__encoder_1/dense_6/Tensordot/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2,
*cnn__encoder_1/dense_6/Tensordot/Reshape_1÷
'cnn__encoder_1/dense_6/Tensordot/MatMulMatMul1cnn__encoder_1/dense_6/Tensordot/Reshape:output:03cnn__encoder_1/dense_6/Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'cnn__encoder_1/dense_6/Tensordot/MatMul
(cnn__encoder_1/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(cnn__encoder_1/dense_6/Tensordot/Const_2¢
.cnn__encoder_1/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.cnn__encoder_1/dense_6/Tensordot/concat_1/axis°
)cnn__encoder_1/dense_6/Tensordot/concat_1ConcatV22cnn__encoder_1/dense_6/Tensordot/GatherV2:output:01cnn__encoder_1/dense_6/Tensordot/Const_2:output:07cnn__encoder_1/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2+
)cnn__encoder_1/dense_6/Tensordot/concat_1í
 cnn__encoder_1/dense_6/TensordotReshape1cnn__encoder_1/dense_6/Tensordot/MatMul:product:02cnn__encoder_1/dense_6/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 cnn__encoder_1/dense_6/TensordotÒ
-cnn__encoder_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp6cnn__encoder_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-cnn__encoder_1/dense_6/BiasAdd/ReadVariableOpä
cnn__encoder_1/dense_6/BiasAddBiasAdd)cnn__encoder_1/dense_6/Tensordot:output:05cnn__encoder_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
cnn__encoder_1/dense_6/BiasAdd
cnn__encoder_1/ReluRelu'cnn__encoder_1/dense_6/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
cnn__encoder_1/ReluÜ
IdentityIdentity!cnn__encoder_1/Relu:activations:0.^cnn__encoder_1/dense_6/BiasAdd/ReadVariableOp0^cnn__encoder_1/dense_6/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::2^
-cnn__encoder_1/dense_6/BiasAdd/ReadVariableOp-cnn__encoder_1/dense_6/BiasAdd/ReadVariableOp2b
/cnn__encoder_1/dense_6/Tensordot/ReadVariableOp/cnn__encoder_1/dense_6/Tensordot/ReadVariableOp:' #
!
_user_specified_name	input_1
$
â
C__inference_dense_6_layer_call_and_return_conditional_losses_116002

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axisÑ
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis×
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/transpose_1/perm­
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0* 
_output_shapes
:
2
Tensordot/transpose_1
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
Tensordot/Reshape_1/shape
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0* 
_output_shapes
:
2
Tensordot/Reshape_1
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:& "
 
_user_specified_nameinputs
Ç
ü
__inference__traced_save_116104
file_prefix<
8savev2_cnn__encoder_1_dense_6_kernel_read_readvariableop:
6savev2_cnn__encoder_1_dense_6_bias_read_readvariableop
savev2_1_const

identity_1¢MergeV2Checkpoints¢SaveV2¢SaveV2_1¥
StringJoin/inputs_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_0458c17e67534409ac232da00b106543/part2
StringJoin/inputs_1

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÊ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*]
valueTBRB$fc/kernel/.ATTRIBUTES/VARIABLE_VALUEB"fc/bias/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:08savev2_cnn__encoder_1_dense_6_kernel_read_readvariableop6savev2_cnn__encoder_1_dense_6_bias_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard¬
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1¢
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slicesÏ
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1ã
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¬
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
: :
:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix


ä
J__inference_cnn__encoder_1_layer_call_and_return_conditional_losses_116017
input_1*
&dense_6_statefulpartitionedcall_args_1*
&dense_6_statefulpartitionedcall_args_2
identity¢dense_6/StatefulPartitionedCall°
dense_6/StatefulPartitionedCallStatefulPartitionedCallinput_1&dense_6_statefulpartitionedcall_args_1&dense_6_statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*/
config_proto

CPU

GPU2 *0J 8*L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1160022!
dense_6/StatefulPartitionedCall³
dense_6/IdentityIdentity(dense_6/StatefulPartitionedCall:output:0 ^dense_6/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_6/Identityf
ReluReludense_6/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0 ^dense_6/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:' #
!
_user_specified_name	input_1
á
¦
$__inference_signature_wrapper_116033
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*/
config_proto

CPU

GPU2 *0J 8**
f%R#
!__inference__wrapped_model_1159642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	input_1

±
/__inference_cnn__encoder_1_layer_call_fn_116025
input_1"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1statefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tin
2*
Tout
2*,
_gradient_op_typePartitionedCallUnused*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*/
config_proto

CPU

GPU2 *0J 8*S
fNRL
J__inference_cnn__encoder_1_layer_call_and_return_conditional_losses_1160172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:' #
!
_user_specified_name	input_1"¯L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default¡
@
input_15
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ@A
output_15
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ@tensorflow/serving/predict:¶&
ö
fc
	variables
regularization_losses
trainable_variables
	keras_api

signatures
*&call_and_return_all_conditional_losses
__call__
_default_save_signature"²
_tf_keras_model{"class_name": "CNN_Encoder", "name": "cnn__encoder_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "is_graph_network": false, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "CNN_Encoder"}}
ö

kernel
bias
		variables

regularization_losses
trainable_variables
	keras_api
*&call_and_return_all_conditional_losses
__call__"Ñ
_tf_keras_layer·{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2048}}}}
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
·
	variables
metrics

layers
non_trainable_variables
layer_regularization_losses
regularization_losses
trainable_variables
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
1:/
2cnn__encoder_1/dense_6/kernel
*:(2cnn__encoder_1/dense_6/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper

		variables
metrics

layers
non_trainable_variables
layer_regularization_losses

regularization_losses
trainable_variables
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
2
J__inference_cnn__encoder_1_layer_call_and_return_conditional_losses_116017Æ
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *+¢(
&#
input_1ÿÿÿÿÿÿÿÿÿ@
ý2ú
/__inference_cnn__encoder_1_layer_call_fn_116025Æ
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *+¢(
&#
input_1ÿÿÿÿÿÿÿÿÿ@
ä2á
!__inference__wrapped_model_115964»
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *+¢(
&#
input_1ÿÿÿÿÿÿÿÿÿ@
í2ê
C__inference_dense_6_layer_call_and_return_conditional_losses_116067¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_dense_6_layer_call_fn_116074¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
3B1
$__inference_signature_wrapper_116033input_1
!__inference__wrapped_model_115964u5¢2
+¢(
&#
input_1ÿÿÿÿÿÿÿÿÿ@
ª "8ª5
3
output_1'$
output_1ÿÿÿÿÿÿÿÿÿ@µ
J__inference_cnn__encoder_1_layer_call_and_return_conditional_losses_116017g5¢2
+¢(
&#
input_1ÿÿÿÿÿÿÿÿÿ@
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ@
 
/__inference_cnn__encoder_1_layer_call_fn_116025Z5¢2
+¢(
&#
input_1ÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@­
C__inference_dense_6_layer_call_and_return_conditional_losses_116067f4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ@
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ@
 
(__inference_dense_6_layer_call_fn_116074Y4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@©
$__inference_signature_wrapper_116033@¢=
¢ 
6ª3
1
input_1&#
input_1ÿÿÿÿÿÿÿÿÿ@"8ª5
3
output_1'$
output_1ÿÿÿÿÿÿÿÿÿ@