??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
?
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8??
r
conv1d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_5/bias
k
!conv1d_5/bias/Read/ReadVariableOpReadVariableOpconv1d_5/bias*
_output_shapes
:*
dtype0
~
conv1d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_5/kernel
w
#conv1d_5/kernel/Read/ReadVariableOpReadVariableOpconv1d_5/kernel*"
_output_shapes
:*
dtype0
r
conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_4/bias
k
!conv1d_4/bias/Read/ReadVariableOpReadVariableOpconv1d_4/bias*
_output_shapes
:*
dtype0
~
conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_4/kernel
w
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*"
_output_shapes
:*
dtype0
?
conv1d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv1d_transpose_1/bias

+conv1d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv1d_transpose_1/bias*
_output_shapes
:*
dtype0
?
conv1d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv1d_transpose_1/kernel
?
-conv1d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_transpose_1/kernel*"
_output_shapes
:*
dtype0
r
conv1d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_3/bias
k
!conv1d_3/bias/Read/ReadVariableOpReadVariableOpconv1d_3/bias*
_output_shapes
:*
dtype0
~
conv1d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_3/kernel
w
#conv1d_3/kernel/Read/ReadVariableOpReadVariableOpconv1d_3/kernel*"
_output_shapes
:*
dtype0
r
conv1d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_2/bias
k
!conv1d_2/bias/Read/ReadVariableOpReadVariableOpconv1d_2/bias*
_output_shapes
:*
dtype0
~
conv1d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_2/kernel
w
#conv1d_2/kernel/Read/ReadVariableOpReadVariableOpconv1d_2/kernel*"
_output_shapes
:*
dtype0
?
conv1d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameconv1d_transpose/bias
{
)conv1d_transpose/bias/Read/ReadVariableOpReadVariableOpconv1d_transpose/bias*
_output_shapes
:*
dtype0
?
conv1d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv1d_transpose/kernel
?
+conv1d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv1d_transpose/kernel*"
_output_shapes
: *
dtype0
r
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_1/bias
k
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes
: *
dtype0
~
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv1d_1/kernel
w
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*"
_output_shapes
:  *
dtype0
n
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d/bias
g
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes
: *
dtype0
z
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d/kernel
s
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*"
_output_shapes
: *
dtype0
?
serving_default_noisePlaceholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_noiseconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasconv1d_transpose/kernelconv1d_transpose/biasconv1d_2/kernelconv1d_2/biasconv1d_3/kernelconv1d_3/biasconv1d_transpose_1/kernelconv1d_transpose_1/biasconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_10010

NoOpNoOp
?Y
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?Y
value?YB?Y B?X
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op*
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
?
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
?
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias
 ?_jit_compiled_convolution_op*
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
?
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op*
?
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses* 
?
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias
 l_jit_compiled_convolution_op*
?
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses* 
?
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

ykernel
zbias
 {_jit_compiled_convolution_op*
?
|	variables
}trainable_variables
~regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
|
0
 1
.2
/3
=4
>5
L6
M7
[8
\9
j10
k11
y12
z13
?14
?15*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
* 

?serving_default* 

0
 1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
]W
VARIABLE_VALUEconv1d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv1d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

.0
/1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

=0
>1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ga
VARIABLE_VALUEconv1d_transpose/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEconv1d_transpose/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

L0
M1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv1d_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

[0
\1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv1d_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

j0
k1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ic
VARIABLE_VALUEconv1d_transpose_1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv1d_transpose_1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

y0
z1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
|	variables
}trainable_variables
~regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

?0
?1*
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv1d_5/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_5/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
|
0
 1
.2
/3
=4
>5
L6
M7
[8
\9
j10
k11
y12
z13
?14
?15*
z
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
 1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

.0
/1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

=0
>1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

L0
M1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

[0
\1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

j0
k1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

y0
z1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp+conv1d_transpose/kernel/Read/ReadVariableOp)conv1d_transpose/bias/Read/ReadVariableOp#conv1d_2/kernel/Read/ReadVariableOp!conv1d_2/bias/Read/ReadVariableOp#conv1d_3/kernel/Read/ReadVariableOp!conv1d_3/bias/Read/ReadVariableOp-conv1d_transpose_1/kernel/Read/ReadVariableOp+conv1d_transpose_1/bias/Read/ReadVariableOp#conv1d_4/kernel/Read/ReadVariableOp!conv1d_4/bias/Read/ReadVariableOp#conv1d_5/kernel/Read/ReadVariableOp!conv1d_5/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_10711
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasconv1d_transpose/kernelconv1d_transpose/biasconv1d_2/kernelconv1d_2/biasconv1d_3/kernelconv1d_3/biasconv1d_transpose_1/kernelconv1d_transpose_1/biasconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_10769??
?
c
G__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_9457

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?B
?

!__inference__traced_restore_10769
file_prefix4
assignvariableop_conv1d_kernel: ,
assignvariableop_1_conv1d_bias: 8
"assignvariableop_2_conv1d_1_kernel:  .
 assignvariableop_3_conv1d_1_bias: @
*assignvariableop_4_conv1d_transpose_kernel: 6
(assignvariableop_5_conv1d_transpose_bias:8
"assignvariableop_6_conv1d_2_kernel:.
 assignvariableop_7_conv1d_2_bias:8
"assignvariableop_8_conv1d_3_kernel:.
 assignvariableop_9_conv1d_3_bias:C
-assignvariableop_10_conv1d_transpose_1_kernel:9
+assignvariableop_11_conv1d_transpose_1_bias:9
#assignvariableop_12_conv1d_4_kernel:/
!assignvariableop_13_conv1d_4_bias:9
#assignvariableop_14_conv1d_5_kernel:/
!assignvariableop_15_conv1d_5_bias:
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_conv1d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_conv1d_transpose_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp(assignvariableop_5_conv1d_transpose_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv1d_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv1d_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv1d_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv1d_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp-assignvariableop_10_conv1d_transpose_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp+assignvariableop_11_conv1d_transpose_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_conv1d_4_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_conv1d_4_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv1d_5_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_conv1d_5_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
0__inference_conv1d_transpose_layer_call_fn_10417

inputs-
conv1d_transpose_kernel: #
conv1d_transpose_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_transpose_kernelconv1d_transpose_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_9207|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:?????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
(__inference_conv1d_5_layer_call_fn_10625

inputs%
conv1d_5_kernel:
conv1d_5_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_5_kernelconv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_5_layer_call_and_return_conditional_losses_9510t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_conv1d_4_layer_call_and_return_conditional_losses_9484

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_4_kernel:2
$biasadd_readvariableop_conv1d_4_bias:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_4_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_4_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_5_layer_call_and_return_conditional_losses_10640

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_5_kernel:2
$biasadd_readvariableop_conv1d_5_bias:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_5_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_5_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_9467

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_conv1d_5_layer_call_and_return_conditional_losses_9510

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_5_kernel:2
$biasadd_readvariableop_conv1d_5_bias:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_5_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_5_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_1_layer_call_fn_10405

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_9395e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? "
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
)__inference_generator_layer_call_fn_10052

inputs#
conv1d_kernel: 
conv1d_bias: %
conv1d_1_kernel:  
conv1d_1_bias: -
conv1d_transpose_kernel: #
conv1d_transpose_bias:%
conv1d_2_kernel:
conv1d_2_bias:%
conv1d_3_kernel:
conv1d_3_bias:/
conv1d_transpose_1_kernel:%
conv1d_transpose_1_bias:%
conv1d_4_kernel:
conv1d_4_bias:%
conv1d_5_kernel:
conv1d_5_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_kernelconv1d_biasconv1d_1_kernelconv1d_1_biasconv1d_transpose_kernelconv1d_transpose_biasconv1d_2_kernelconv1d_2_biasconv1d_3_kernelconv1d_3_biasconv1d_transpose_1_kernelconv1d_transpose_1_biasconv1d_4_kernelconv1d_4_biasconv1d_5_kernelconv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_generator_layer_call_and_return_conditional_losses_9807t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
M__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_10576

inputs\
Fconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:<
.biasadd_readvariableop_conv1d_transpose_1_bias:
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"???????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpFconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"??????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :??????????????????*
squeeze_dims
?
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_conv1d_transpose_1_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:??????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
B__inference_conv1d_2_layer_call_and_return_conditional_losses_9422

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_2_kernel:2
$biasadd_readvariableop_conv1d_2_bias:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_2_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_2_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_10618

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_4_layer_call_fn_10525

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_9457e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_generator_layer_call_fn_9534	
noise#
conv1d_kernel: 
conv1d_bias: %
conv1d_1_kernel:  
conv1d_1_bias: -
conv1d_transpose_kernel: #
conv1d_transpose_bias:%
conv1d_2_kernel:
conv1d_2_bias:%
conv1d_3_kernel:
conv1d_3_bias:/
conv1d_transpose_1_kernel:%
conv1d_transpose_1_bias:%
conv1d_4_kernel:
conv1d_4_bias:%
conv1d_5_kernel:
conv1d_5_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnoiseconv1d_kernelconv1d_biasconv1d_1_kernelconv1d_1_biasconv1d_transpose_kernelconv1d_transpose_biasconv1d_2_kernelconv1d_2_biasconv1d_3_kernelconv1d_3_biasconv1d_transpose_1_kernelconv1d_transpose_1_biasconv1d_4_kernelconv1d_4_biasconv1d_5_kernelconv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_generator_layer_call_and_return_conditional_losses_9515t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:??????????

_user_specified_namenoise
?
?
B__inference_conv1d_3_layer_call_and_return_conditional_losses_9448

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_3_kernel:2
$biasadd_readvariableop_conv1d_3_bias:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_3_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_3_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_2_layer_call_fn_10461

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_9405e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_10378

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:?????????? *
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:?????????? "
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
(__inference_conv1d_4_layer_call_fn_10593

inputs%
conv1d_4_kernel:
conv1d_4_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_kernelconv1d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_4_layer_call_and_return_conditional_losses_9484t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_10410

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:?????????? *
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:?????????? "
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
@__inference_conv1d_layer_call_and_return_conditional_losses_9360

inputsF
0conv1d_expanddims_1_readvariableop_conv1d_kernel: 0
"biasadd_readvariableop_conv1d_bias: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp0conv1d_expanddims_1_readvariableop_conv1d_kernel*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????u
BiasAdd/ReadVariableOpReadVariableOp"biasadd_readvariableop_conv1d_bias*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?A
?
C__inference_generator_layer_call_and_return_conditional_losses_9952	
noise*
conv1d_conv1d_kernel:  
conv1d_conv1d_bias: .
conv1d_1_conv1d_1_kernel:  $
conv1d_1_conv1d_1_bias: >
(conv1d_transpose_conv1d_transpose_kernel: 4
&conv1d_transpose_conv1d_transpose_bias:.
conv1d_2_conv1d_2_kernel:$
conv1d_2_conv1d_2_bias:.
conv1d_3_conv1d_3_kernel:$
conv1d_3_conv1d_3_bias:B
,conv1d_transpose_1_conv1d_transpose_1_kernel:8
*conv1d_transpose_1_conv1d_transpose_1_bias:.
conv1d_4_conv1d_4_kernel:$
conv1d_4_conv1d_4_bias:.
conv1d_5_conv1d_5_kernel:$
conv1d_5_conv1d_5_bias:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall? conv1d_3/StatefulPartitionedCall? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall?(conv1d_transpose/StatefulPartitionedCall?*conv1d_transpose_1/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallnoiseconv1d_conv1d_kernelconv1d_conv1d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1d_layer_call_and_return_conditional_losses_9360?
leaky_re_lu/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_9369?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0conv1d_1_conv1d_1_kernelconv1d_1_conv1d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_9386?
leaky_re_lu_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_9395?
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0(conv1d_transpose_conv1d_transpose_kernel&conv1d_transpose_conv1d_transpose_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_9207?
leaky_re_lu_2/PartitionedCallPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_9405?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0conv1d_2_conv1d_2_kernelconv1d_2_conv1d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_9422?
leaky_re_lu_3/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_9431?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0conv1d_3_conv1d_3_kernelconv1d_3_conv1d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_3_layer_call_and_return_conditional_losses_9448?
leaky_re_lu_4/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_9457?
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0,conv1d_transpose_1_conv1d_transpose_1_kernel*conv1d_transpose_1_conv1d_transpose_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_9294?
leaky_re_lu_5/PartitionedCallPartitionedCall3conv1d_transpose_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_9467?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0conv1d_4_conv1d_4_kernelconv1d_4_conv1d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_4_layer_call_and_return_conditional_losses_9484?
leaky_re_lu_6/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_9493?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0conv1d_5_conv1d_5_kernelconv1d_5_conv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_5_layer_call_and_return_conditional_losses_9510}
IdentityIdentity)conv1d_5/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall:S O
,
_output_shapes
:??????????

_user_specified_namenoise
?
c
G__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_9395

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:?????????? *
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:?????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
D__inference_generator_layer_call_and_return_conditional_losses_10346

inputsM
7conv1d_conv1d_expanddims_1_readvariableop_conv1d_kernel: 7
)conv1d_biasadd_readvariableop_conv1d_bias: Q
;conv1d_1_conv1d_expanddims_1_readvariableop_conv1d_1_kernel:  ;
-conv1d_1_biasadd_readvariableop_conv1d_1_bias: k
Uconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel: K
=conv1d_transpose_biasadd_readvariableop_conv1d_transpose_bias:Q
;conv1d_2_conv1d_expanddims_1_readvariableop_conv1d_2_kernel:;
-conv1d_2_biasadd_readvariableop_conv1d_2_bias:Q
;conv1d_3_conv1d_expanddims_1_readvariableop_conv1d_3_kernel:;
-conv1d_3_biasadd_readvariableop_conv1d_3_bias:o
Yconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:O
Aconv1d_transpose_1_biasadd_readvariableop_conv1d_transpose_1_bias:Q
;conv1d_4_conv1d_expanddims_1_readvariableop_conv1d_4_kernel:;
-conv1d_4_biasadd_readvariableop_conv1d_4_bias:Q
;conv1d_5_conv1d_expanddims_1_readvariableop_conv1d_5_kernel:;
-conv1d_5_biasadd_readvariableop_conv1d_5_bias:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_3/BiasAdd/ReadVariableOp?+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_4/BiasAdd/ReadVariableOp?+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_5/BiasAdd/ReadVariableOp?+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp?'conv1d_transpose/BiasAdd/ReadVariableOp?=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp?)conv1d_transpose_1/BiasAdd/ReadVariableOp??conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpg
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsinputs%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7conv1d_conv1d_expanddims_1_readvariableop_conv1d_kernel*"
_output_shapes
: *
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp)conv1d_biasadd_readvariableop_conv1d_bias*
_output_shapes
: *
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? y
leaky_re_lu/LeakyRelu	LeakyReluconv1d/BiasAdd:output:0*,
_output_shapes
:?????????? *
alpha%???>i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDims#leaky_re_lu/LeakyRelu:activations:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_1_conv1d_expanddims_1_readvariableop_conv1d_1_kernel*"
_output_shapes
:  *
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp-conv1d_1_biasadd_readvariableop_conv1d_1_bias*
_output_shapes
: *
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? }
leaky_re_lu_1/LeakyRelu	LeakyReluconv1d_1/BiasAdd:output:0*,
_output_shapes
:?????????? *
alpha%???>k
conv1d_transpose/ShapeShape%leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/Shape:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/Shape:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/mulMul)conv1d_transpose/strided_slice_1:output:0conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/stackPack'conv1d_transpose/strided_slice:output:0conv1d_transpose/mul:z:0!conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:r
0conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
,conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDims%leaky_re_lu_1/LeakyRelu:activations:09conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpUconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*"
_output_shapes
: *
dtype0t
2conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
.conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsEconv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0;conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
5conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/conv1d_transpose/conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/stack:output:0>conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
7conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose/conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask{
1conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:o
-conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(conv1d_transpose/conv1d_transpose/concatConcatV28conv1d_transpose/conv1d_transpose/strided_slice:output:0:conv1d_transpose/conv1d_transpose/concat/values_1:output:0:conv1d_transpose/conv1d_transpose/strided_slice_1:output:06conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
!conv1d_transpose/conv1d_transposeConv2DBackpropInput1conv1d_transpose/conv1d_transpose/concat:output:07conv1d_transpose/conv1d_transpose/ExpandDims_1:output:05conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
)conv1d_transpose/conv1d_transpose/SqueezeSqueeze*conv1d_transpose/conv1d_transpose:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
?
'conv1d_transpose/BiasAdd/ReadVariableOpReadVariableOp=conv1d_transpose_biasadd_readvariableop_conv1d_transpose_bias*
_output_shapes
:*
dtype0?
conv1d_transpose/BiasAddBiasAdd2conv1d_transpose/conv1d_transpose/Squeeze:output:0/conv1d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
leaky_re_lu_2/LeakyRelu	LeakyRelu!conv1d_transpose/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>i
conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_2/Conv1D/ExpandDims
ExpandDims%leaky_re_lu_2/LeakyRelu:activations:0'conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_2_conv1d_expanddims_1_readvariableop_conv1d_2_kernel*"
_output_shapes
:*
dtype0b
 conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_2/Conv1D/ExpandDims_1
ExpandDims3conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_2/Conv1DConv2D#conv1d_2/Conv1D/ExpandDims:output:0%conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_2/Conv1D/SqueezeSqueezeconv1d_2/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp-conv1d_2_biasadd_readvariableop_conv1d_2_bias*
_output_shapes
:*
dtype0?
conv1d_2/BiasAddBiasAdd conv1d_2/Conv1D/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????}
leaky_re_lu_3/LeakyRelu	LeakyReluconv1d_2/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>i
conv1d_3/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_3/Conv1D/ExpandDims
ExpandDims%leaky_re_lu_3/LeakyRelu:activations:0'conv1d_3/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_3_conv1d_expanddims_1_readvariableop_conv1d_3_kernel*"
_output_shapes
:*
dtype0b
 conv1d_3/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_3/Conv1D/ExpandDims_1
ExpandDims3conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_3/Conv1DConv2D#conv1d_3/Conv1D/ExpandDims:output:0%conv1d_3/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_3/Conv1D/SqueezeSqueezeconv1d_3/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp-conv1d_3_biasadd_readvariableop_conv1d_3_bias*
_output_shapes
:*
dtype0?
conv1d_3/BiasAddBiasAdd conv1d_3/Conv1D/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????}
leaky_re_lu_4/LeakyRelu	LeakyReluconv1d_3/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>m
conv1d_transpose_1/ShapeShape%leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose_1/strided_sliceStridedSlice!conv1d_transpose_1/Shape:output:0/conv1d_transpose_1/strided_slice/stack:output:01conv1d_transpose_1/strided_slice/stack_1:output:01conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv1d_transpose_1/strided_slice_1StridedSlice!conv1d_transpose_1/Shape:output:01conv1d_transpose_1/strided_slice_1/stack:output:03conv1d_transpose_1/strided_slice_1/stack_1:output:03conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_1/mulMul+conv1d_transpose_1/strided_slice_1:output:0!conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_1/stackPack)conv1d_transpose_1/strided_slice:output:0conv1d_transpose_1/mul:z:0#conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
.conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDims%leaky_re_lu_4/LeakyRelu:activations:0;conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpYconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*
dtype0v
4conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
7conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_1/stack:output:0@conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
9conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_1/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*conv1d_transpose_1/conv1d_transpose/concatConcatV2:conv1d_transpose_1/conv1d_transpose/strided_slice:output:0<conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
#conv1d_transpose_1/conv1d_transposeConv2DBackpropInput3conv1d_transpose_1/conv1d_transpose/concat:output:09conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
+conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_1/conv1d_transpose:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
?
)conv1d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpAconv1d_transpose_1_biasadd_readvariableop_conv1d_transpose_1_bias*
_output_shapes
:*
dtype0?
conv1d_transpose_1/BiasAddBiasAdd4conv1d_transpose_1/conv1d_transpose/Squeeze:output:01conv1d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
leaky_re_lu_5/LeakyRelu	LeakyRelu#conv1d_transpose_1/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>i
conv1d_4/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_4/Conv1D/ExpandDims
ExpandDims%leaky_re_lu_5/LeakyRelu:activations:0'conv1d_4/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_4_conv1d_expanddims_1_readvariableop_conv1d_4_kernel*"
_output_shapes
:*
dtype0b
 conv1d_4/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_4/Conv1D/ExpandDims_1
ExpandDims3conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_4/Conv1DConv2D#conv1d_4/Conv1D/ExpandDims:output:0%conv1d_4/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_4/Conv1D/SqueezeSqueezeconv1d_4/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp-conv1d_4_biasadd_readvariableop_conv1d_4_bias*
_output_shapes
:*
dtype0?
conv1d_4/BiasAddBiasAdd conv1d_4/Conv1D/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????}
leaky_re_lu_6/LeakyRelu	LeakyReluconv1d_4/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>i
conv1d_5/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_5/Conv1D/ExpandDims
ExpandDims%leaky_re_lu_6/LeakyRelu:activations:0'conv1d_5/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_5_conv1d_expanddims_1_readvariableop_conv1d_5_kernel*"
_output_shapes
:*
dtype0b
 conv1d_5/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_5/Conv1D/ExpandDims_1
ExpandDims3conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_5/Conv1DConv2D#conv1d_5/Conv1D/ExpandDims:output:0%conv1d_5/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_5/Conv1D/SqueezeSqueezeconv1d_5/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp-conv1d_5_biasadd_readvariableop_conv1d_5_bias*
_output_shapes
:*
dtype0?
conv1d_5/BiasAddBiasAdd conv1d_5/Conv1D/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????m
IdentityIdentityconv1d_5/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp(^conv1d_transpose/BiasAdd/ReadVariableOp>^conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp*^conv1d_transpose_1/BiasAdd/ReadVariableOp@^conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp2R
'conv1d_transpose/BiasAdd/ReadVariableOp'conv1d_transpose/BiasAdd/ReadVariableOp2~
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2V
)conv1d_transpose_1/BiasAdd/ReadVariableOp)conv1d_transpose_1/BiasAdd/ReadVariableOp2?
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_conv1d_1_layer_call_fn_10385

inputs%
conv1d_1_kernel:  
conv1d_1_bias: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_1_kernelconv1d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_9386t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:?????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
d
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_10466

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_3_layer_call_fn_10493

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_9431e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_conv1d_2_layer_call_fn_10473

inputs%
conv1d_2_kernel:
conv1d_2_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_2_kernelconv1d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_9422t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_generator_layer_call_fn_9917	
noise#
conv1d_kernel: 
conv1d_bias: %
conv1d_1_kernel:  
conv1d_1_bias: -
conv1d_transpose_kernel: #
conv1d_transpose_bias:%
conv1d_2_kernel:
conv1d_2_bias:%
conv1d_3_kernel:
conv1d_3_bias:/
conv1d_transpose_1_kernel:%
conv1d_transpose_1_bias:%
conv1d_4_kernel:
conv1d_4_bias:%
conv1d_5_kernel:
conv1d_5_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnoiseconv1d_kernelconv1d_biasconv1d_1_kernelconv1d_1_biasconv1d_transpose_kernelconv1d_transpose_biasconv1d_2_kernelconv1d_2_biasconv1d_3_kernelconv1d_3_biasconv1d_transpose_1_kernelconv1d_transpose_1_biasconv1d_4_kernelconv1d_4_biasconv1d_5_kernelconv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_generator_layer_call_and_return_conditional_losses_9807t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:??????????

_user_specified_namenoise
?
c
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_9493

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?A
?
C__inference_generator_layer_call_and_return_conditional_losses_9987	
noise*
conv1d_conv1d_kernel:  
conv1d_conv1d_bias: .
conv1d_1_conv1d_1_kernel:  $
conv1d_1_conv1d_1_bias: >
(conv1d_transpose_conv1d_transpose_kernel: 4
&conv1d_transpose_conv1d_transpose_bias:.
conv1d_2_conv1d_2_kernel:$
conv1d_2_conv1d_2_bias:.
conv1d_3_conv1d_3_kernel:$
conv1d_3_conv1d_3_bias:B
,conv1d_transpose_1_conv1d_transpose_1_kernel:8
*conv1d_transpose_1_conv1d_transpose_1_bias:.
conv1d_4_conv1d_4_kernel:$
conv1d_4_conv1d_4_bias:.
conv1d_5_conv1d_5_kernel:$
conv1d_5_conv1d_5_bias:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall? conv1d_3/StatefulPartitionedCall? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall?(conv1d_transpose/StatefulPartitionedCall?*conv1d_transpose_1/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallnoiseconv1d_conv1d_kernelconv1d_conv1d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1d_layer_call_and_return_conditional_losses_9360?
leaky_re_lu/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_9369?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0conv1d_1_conv1d_1_kernelconv1d_1_conv1d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_9386?
leaky_re_lu_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_9395?
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0(conv1d_transpose_conv1d_transpose_kernel&conv1d_transpose_conv1d_transpose_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_9207?
leaky_re_lu_2/PartitionedCallPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_9405?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0conv1d_2_conv1d_2_kernelconv1d_2_conv1d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_9422?
leaky_re_lu_3/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_9431?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0conv1d_3_conv1d_3_kernelconv1d_3_conv1d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_3_layer_call_and_return_conditional_losses_9448?
leaky_re_lu_4/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_9457?
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0,conv1d_transpose_1_conv1d_transpose_1_kernel*conv1d_transpose_1_conv1d_transpose_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_9294?
leaky_re_lu_5/PartitionedCallPartitionedCall3conv1d_transpose_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_9467?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0conv1d_4_conv1d_4_kernelconv1d_4_conv1d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_4_layer_call_and_return_conditional_losses_9484?
leaky_re_lu_6/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_9493?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0conv1d_5_conv1d_5_kernelconv1d_5_conv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_5_layer_call_and_return_conditional_losses_9510}
IdentityIdentity)conv1d_5/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall:S O
,
_output_shapes
:??????????

_user_specified_namenoise
?
c
G__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_9431

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_generator_layer_call_fn_10031

inputs#
conv1d_kernel: 
conv1d_bias: %
conv1d_1_kernel:  
conv1d_1_bias: -
conv1d_transpose_kernel: #
conv1d_transpose_bias:%
conv1d_2_kernel:
conv1d_2_bias:%
conv1d_3_kernel:
conv1d_3_bias:/
conv1d_transpose_1_kernel:%
conv1d_transpose_1_bias:%
conv1d_4_kernel:
conv1d_4_bias:%
conv1d_5_kernel:
conv1d_5_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_kernelconv1d_biasconv1d_1_kernelconv1d_1_biasconv1d_transpose_kernelconv1d_transpose_biasconv1d_2_kernelconv1d_2_biasconv1d_3_kernelconv1d_3_biasconv1d_transpose_1_kernelconv1d_transpose_1_biasconv1d_4_kernelconv1d_4_biasconv1d_5_kernelconv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_generator_layer_call_and_return_conditional_losses_9515t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?B
?
C__inference_generator_layer_call_and_return_conditional_losses_9515

inputs*
conv1d_conv1d_kernel:  
conv1d_conv1d_bias: .
conv1d_1_conv1d_1_kernel:  $
conv1d_1_conv1d_1_bias: >
(conv1d_transpose_conv1d_transpose_kernel: 4
&conv1d_transpose_conv1d_transpose_bias:.
conv1d_2_conv1d_2_kernel:$
conv1d_2_conv1d_2_bias:.
conv1d_3_conv1d_3_kernel:$
conv1d_3_conv1d_3_bias:B
,conv1d_transpose_1_conv1d_transpose_1_kernel:8
*conv1d_transpose_1_conv1d_transpose_1_bias:.
conv1d_4_conv1d_4_kernel:$
conv1d_4_conv1d_4_bias:.
conv1d_5_conv1d_5_kernel:$
conv1d_5_conv1d_5_bias:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall? conv1d_3/StatefulPartitionedCall? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall?(conv1d_transpose/StatefulPartitionedCall?*conv1d_transpose_1/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_conv1d_kernelconv1d_conv1d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1d_layer_call_and_return_conditional_losses_9360?
leaky_re_lu/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_9369?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0conv1d_1_conv1d_1_kernelconv1d_1_conv1d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_9386?
leaky_re_lu_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_9395?
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0(conv1d_transpose_conv1d_transpose_kernel&conv1d_transpose_conv1d_transpose_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_9207?
leaky_re_lu_2/PartitionedCallPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_9405?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0conv1d_2_conv1d_2_kernelconv1d_2_conv1d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_9422?
leaky_re_lu_3/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_9431?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0conv1d_3_conv1d_3_kernelconv1d_3_conv1d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_3_layer_call_and_return_conditional_losses_9448?
leaky_re_lu_4/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_9457?
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0,conv1d_transpose_1_conv1d_transpose_1_kernel*conv1d_transpose_1_conv1d_transpose_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_9294?
leaky_re_lu_5/PartitionedCallPartitionedCall3conv1d_transpose_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_9467?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0conv1d_4_conv1d_4_kernelconv1d_4_conv1d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_4_layer_call_and_return_conditional_losses_9484?
leaky_re_lu_6/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_9493?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0conv1d_5_conv1d_5_kernelconv1d_5_conv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_5_layer_call_and_return_conditional_losses_9510}
IdentityIdentity)conv1d_5/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_conv1d_3_layer_call_fn_10505

inputs%
conv1d_3_kernel:
conv1d_3_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_3_kernelconv1d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_3_layer_call_and_return_conditional_losses_9448t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_conv1d_layer_call_fn_10353

inputs#
conv1d_kernel: 
conv1d_bias: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_kernelconv1d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1d_layer_call_and_return_conditional_losses_9360t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:?????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?+
?
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_9294

inputs\
Fconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:<
.biasadd_readvariableop_conv1d_transpose_1_bias:
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"???????????????????
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpFconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"??????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :??????????????????*
squeeze_dims
?
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_conv1d_transpose_1_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_5_layer_call_fn_10581

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_9467e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
__inference__wrapped_model_9164	
noiseW
Agenerator_conv1d_conv1d_expanddims_1_readvariableop_conv1d_kernel: A
3generator_conv1d_biasadd_readvariableop_conv1d_bias: [
Egenerator_conv1d_1_conv1d_expanddims_1_readvariableop_conv1d_1_kernel:  E
7generator_conv1d_1_biasadd_readvariableop_conv1d_1_bias: u
_generator_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel: U
Ggenerator_conv1d_transpose_biasadd_readvariableop_conv1d_transpose_bias:[
Egenerator_conv1d_2_conv1d_expanddims_1_readvariableop_conv1d_2_kernel:E
7generator_conv1d_2_biasadd_readvariableop_conv1d_2_bias:[
Egenerator_conv1d_3_conv1d_expanddims_1_readvariableop_conv1d_3_kernel:E
7generator_conv1d_3_biasadd_readvariableop_conv1d_3_bias:y
cgenerator_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:Y
Kgenerator_conv1d_transpose_1_biasadd_readvariableop_conv1d_transpose_1_bias:[
Egenerator_conv1d_4_conv1d_expanddims_1_readvariableop_conv1d_4_kernel:E
7generator_conv1d_4_biasadd_readvariableop_conv1d_4_bias:[
Egenerator_conv1d_5_conv1d_expanddims_1_readvariableop_conv1d_5_kernel:E
7generator_conv1d_5_biasadd_readvariableop_conv1d_5_bias:
identity??'generator/conv1d/BiasAdd/ReadVariableOp?3generator/conv1d/Conv1D/ExpandDims_1/ReadVariableOp?)generator/conv1d_1/BiasAdd/ReadVariableOp?5generator/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?)generator/conv1d_2/BiasAdd/ReadVariableOp?5generator/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?)generator/conv1d_3/BiasAdd/ReadVariableOp?5generator/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp?)generator/conv1d_4/BiasAdd/ReadVariableOp?5generator/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp?)generator/conv1d_5/BiasAdd/ReadVariableOp?5generator/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp?1generator/conv1d_transpose/BiasAdd/ReadVariableOp?Ggenerator/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp?3generator/conv1d_transpose_1/BiasAdd/ReadVariableOp?Igenerator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpq
&generator/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"generator/conv1d/Conv1D/ExpandDims
ExpandDimsnoise/generator/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
3generator/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpAgenerator_conv1d_conv1d_expanddims_1_readvariableop_conv1d_kernel*"
_output_shapes
: *
dtype0j
(generator/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
$generator/conv1d/Conv1D/ExpandDims_1
ExpandDims;generator/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:01generator/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
generator/conv1d/Conv1DConv2D+generator/conv1d/Conv1D/ExpandDims:output:0-generator/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
generator/conv1d/Conv1D/SqueezeSqueeze generator/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
'generator/conv1d/BiasAdd/ReadVariableOpReadVariableOp3generator_conv1d_biasadd_readvariableop_conv1d_bias*
_output_shapes
: *
dtype0?
generator/conv1d/BiasAddBiasAdd(generator/conv1d/Conv1D/Squeeze:output:0/generator/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? ?
generator/leaky_re_lu/LeakyRelu	LeakyRelu!generator/conv1d/BiasAdd:output:0*,
_output_shapes
:?????????? *
alpha%???>s
(generator/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$generator/conv1d_1/Conv1D/ExpandDims
ExpandDims-generator/leaky_re_lu/LeakyRelu:activations:01generator/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
5generator/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpEgenerator_conv1d_1_conv1d_expanddims_1_readvariableop_conv1d_1_kernel*"
_output_shapes
:  *
dtype0l
*generator/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
&generator/conv1d_1/Conv1D/ExpandDims_1
ExpandDims=generator/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:03generator/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
generator/conv1d_1/Conv1DConv2D-generator/conv1d_1/Conv1D/ExpandDims:output:0/generator/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
!generator/conv1d_1/Conv1D/SqueezeSqueeze"generator/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
)generator/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp7generator_conv1d_1_biasadd_readvariableop_conv1d_1_bias*
_output_shapes
: *
dtype0?
generator/conv1d_1/BiasAddBiasAdd*generator/conv1d_1/Conv1D/Squeeze:output:01generator/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? ?
!generator/leaky_re_lu_1/LeakyRelu	LeakyRelu#generator/conv1d_1/BiasAdd:output:0*,
_output_shapes
:?????????? *
alpha%???>
 generator/conv1d_transpose/ShapeShape/generator/leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:x
.generator/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0generator/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0generator/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(generator/conv1d_transpose/strided_sliceStridedSlice)generator/conv1d_transpose/Shape:output:07generator/conv1d_transpose/strided_slice/stack:output:09generator/conv1d_transpose/strided_slice/stack_1:output:09generator/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
0generator/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2generator/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2generator/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*generator/conv1d_transpose/strided_slice_1StridedSlice)generator/conv1d_transpose/Shape:output:09generator/conv1d_transpose/strided_slice_1/stack:output:0;generator/conv1d_transpose/strided_slice_1/stack_1:output:0;generator/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 generator/conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
generator/conv1d_transpose/mulMul3generator/conv1d_transpose/strided_slice_1:output:0)generator/conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: d
"generator/conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :?
 generator/conv1d_transpose/stackPack1generator/conv1d_transpose/strided_slice:output:0"generator/conv1d_transpose/mul:z:0+generator/conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:|
:generator/conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
6generator/conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDims/generator/leaky_re_lu_1/LeakyRelu:activations:0Cgenerator/conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
Ggenerator/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOp_generator_conv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*"
_output_shapes
: *
dtype0~
<generator/conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
8generator/conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsOgenerator/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Egenerator/conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
?generator/conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Agenerator/conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Agenerator/conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9generator/conv1d_transpose/conv1d_transpose/strided_sliceStridedSlice)generator/conv1d_transpose/stack:output:0Hgenerator/conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0Jgenerator/conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0Jgenerator/conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Agenerator/conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Cgenerator/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Cgenerator/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
;generator/conv1d_transpose/conv1d_transpose/strided_slice_1StridedSlice)generator/conv1d_transpose/stack:output:0Jgenerator/conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Lgenerator/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Lgenerator/conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
;generator/conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:y
7generator/conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
2generator/conv1d_transpose/conv1d_transpose/concatConcatV2Bgenerator/conv1d_transpose/conv1d_transpose/strided_slice:output:0Dgenerator/conv1d_transpose/conv1d_transpose/concat/values_1:output:0Dgenerator/conv1d_transpose/conv1d_transpose/strided_slice_1:output:0@generator/conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
+generator/conv1d_transpose/conv1d_transposeConv2DBackpropInput;generator/conv1d_transpose/conv1d_transpose/concat:output:0Agenerator/conv1d_transpose/conv1d_transpose/ExpandDims_1:output:0?generator/conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
3generator/conv1d_transpose/conv1d_transpose/SqueezeSqueeze4generator/conv1d_transpose/conv1d_transpose:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
?
1generator/conv1d_transpose/BiasAdd/ReadVariableOpReadVariableOpGgenerator_conv1d_transpose_biasadd_readvariableop_conv1d_transpose_bias*
_output_shapes
:*
dtype0?
"generator/conv1d_transpose/BiasAddBiasAdd<generator/conv1d_transpose/conv1d_transpose/Squeeze:output:09generator/conv1d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
!generator/leaky_re_lu_2/LeakyRelu	LeakyRelu+generator/conv1d_transpose/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>s
(generator/conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$generator/conv1d_2/Conv1D/ExpandDims
ExpandDims/generator/leaky_re_lu_2/LeakyRelu:activations:01generator/conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
5generator/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpEgenerator_conv1d_2_conv1d_expanddims_1_readvariableop_conv1d_2_kernel*"
_output_shapes
:*
dtype0l
*generator/conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
&generator/conv1d_2/Conv1D/ExpandDims_1
ExpandDims=generator/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:03generator/conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
generator/conv1d_2/Conv1DConv2D-generator/conv1d_2/Conv1D/ExpandDims:output:0/generator/conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!generator/conv1d_2/Conv1D/SqueezeSqueeze"generator/conv1d_2/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
)generator/conv1d_2/BiasAdd/ReadVariableOpReadVariableOp7generator_conv1d_2_biasadd_readvariableop_conv1d_2_bias*
_output_shapes
:*
dtype0?
generator/conv1d_2/BiasAddBiasAdd*generator/conv1d_2/Conv1D/Squeeze:output:01generator/conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
!generator/leaky_re_lu_3/LeakyRelu	LeakyRelu#generator/conv1d_2/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>s
(generator/conv1d_3/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$generator/conv1d_3/Conv1D/ExpandDims
ExpandDims/generator/leaky_re_lu_3/LeakyRelu:activations:01generator/conv1d_3/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
5generator/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpEgenerator_conv1d_3_conv1d_expanddims_1_readvariableop_conv1d_3_kernel*"
_output_shapes
:*
dtype0l
*generator/conv1d_3/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
&generator/conv1d_3/Conv1D/ExpandDims_1
ExpandDims=generator/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp:value:03generator/conv1d_3/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
generator/conv1d_3/Conv1DConv2D-generator/conv1d_3/Conv1D/ExpandDims:output:0/generator/conv1d_3/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!generator/conv1d_3/Conv1D/SqueezeSqueeze"generator/conv1d_3/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
)generator/conv1d_3/BiasAdd/ReadVariableOpReadVariableOp7generator_conv1d_3_biasadd_readvariableop_conv1d_3_bias*
_output_shapes
:*
dtype0?
generator/conv1d_3/BiasAddBiasAdd*generator/conv1d_3/Conv1D/Squeeze:output:01generator/conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
!generator/leaky_re_lu_4/LeakyRelu	LeakyRelu#generator/conv1d_3/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>?
"generator/conv1d_transpose_1/ShapeShape/generator/leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:z
0generator/conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2generator/conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2generator/conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*generator/conv1d_transpose_1/strided_sliceStridedSlice+generator/conv1d_transpose_1/Shape:output:09generator/conv1d_transpose_1/strided_slice/stack:output:0;generator/conv1d_transpose_1/strided_slice/stack_1:output:0;generator/conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
2generator/conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4generator/conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4generator/conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,generator/conv1d_transpose_1/strided_slice_1StridedSlice+generator/conv1d_transpose_1/Shape:output:0;generator/conv1d_transpose_1/strided_slice_1/stack:output:0=generator/conv1d_transpose_1/strided_slice_1/stack_1:output:0=generator/conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"generator/conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
 generator/conv1d_transpose_1/mulMul5generator/conv1d_transpose_1/strided_slice_1:output:0+generator/conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: f
$generator/conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :?
"generator/conv1d_transpose_1/stackPack3generator/conv1d_transpose_1/strided_slice:output:0$generator/conv1d_transpose_1/mul:z:0-generator/conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:~
<generator/conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
8generator/conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDims/generator/leaky_re_lu_4/LeakyRelu:activations:0Egenerator/conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
Igenerator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpcgenerator_conv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*
dtype0?
>generator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
:generator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsQgenerator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0Ggenerator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Agenerator/conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Cgenerator/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Cgenerator/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
;generator/conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice+generator/conv1d_transpose_1/stack:output:0Jgenerator/conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Lgenerator/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Lgenerator/conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
Cgenerator/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Egenerator/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
Egenerator/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
=generator/conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice+generator/conv1d_transpose_1/stack:output:0Lgenerator/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Ngenerator/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Ngenerator/conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask?
=generator/conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:{
9generator/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
4generator/conv1d_transpose_1/conv1d_transpose/concatConcatV2Dgenerator/conv1d_transpose_1/conv1d_transpose/strided_slice:output:0Fgenerator/conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0Fgenerator/conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:0Bgenerator/conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
-generator/conv1d_transpose_1/conv1d_transposeConv2DBackpropInput=generator/conv1d_transpose_1/conv1d_transpose/concat:output:0Cgenerator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:0Agenerator/conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
5generator/conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze6generator/conv1d_transpose_1/conv1d_transpose:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
?
3generator/conv1d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpKgenerator_conv1d_transpose_1_biasadd_readvariableop_conv1d_transpose_1_bias*
_output_shapes
:*
dtype0?
$generator/conv1d_transpose_1/BiasAddBiasAdd>generator/conv1d_transpose_1/conv1d_transpose/Squeeze:output:0;generator/conv1d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
!generator/leaky_re_lu_5/LeakyRelu	LeakyRelu-generator/conv1d_transpose_1/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>s
(generator/conv1d_4/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$generator/conv1d_4/Conv1D/ExpandDims
ExpandDims/generator/leaky_re_lu_5/LeakyRelu:activations:01generator/conv1d_4/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
5generator/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpEgenerator_conv1d_4_conv1d_expanddims_1_readvariableop_conv1d_4_kernel*"
_output_shapes
:*
dtype0l
*generator/conv1d_4/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
&generator/conv1d_4/Conv1D/ExpandDims_1
ExpandDims=generator/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp:value:03generator/conv1d_4/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
generator/conv1d_4/Conv1DConv2D-generator/conv1d_4/Conv1D/ExpandDims:output:0/generator/conv1d_4/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!generator/conv1d_4/Conv1D/SqueezeSqueeze"generator/conv1d_4/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
)generator/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp7generator_conv1d_4_biasadd_readvariableop_conv1d_4_bias*
_output_shapes
:*
dtype0?
generator/conv1d_4/BiasAddBiasAdd*generator/conv1d_4/Conv1D/Squeeze:output:01generator/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
!generator/leaky_re_lu_6/LeakyRelu	LeakyRelu#generator/conv1d_4/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>s
(generator/conv1d_5/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$generator/conv1d_5/Conv1D/ExpandDims
ExpandDims/generator/leaky_re_lu_6/LeakyRelu:activations:01generator/conv1d_5/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
5generator/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpEgenerator_conv1d_5_conv1d_expanddims_1_readvariableop_conv1d_5_kernel*"
_output_shapes
:*
dtype0l
*generator/conv1d_5/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
&generator/conv1d_5/Conv1D/ExpandDims_1
ExpandDims=generator/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp:value:03generator/conv1d_5/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
generator/conv1d_5/Conv1DConv2D-generator/conv1d_5/Conv1D/ExpandDims:output:0/generator/conv1d_5/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
!generator/conv1d_5/Conv1D/SqueezeSqueeze"generator/conv1d_5/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
)generator/conv1d_5/BiasAdd/ReadVariableOpReadVariableOp7generator_conv1d_5_biasadd_readvariableop_conv1d_5_bias*
_output_shapes
:*
dtype0?
generator/conv1d_5/BiasAddBiasAdd*generator/conv1d_5/Conv1D/Squeeze:output:01generator/conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????w
IdentityIdentity#generator/conv1d_5/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp(^generator/conv1d/BiasAdd/ReadVariableOp4^generator/conv1d/Conv1D/ExpandDims_1/ReadVariableOp*^generator/conv1d_1/BiasAdd/ReadVariableOp6^generator/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp*^generator/conv1d_2/BiasAdd/ReadVariableOp6^generator/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp*^generator/conv1d_3/BiasAdd/ReadVariableOp6^generator/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp*^generator/conv1d_4/BiasAdd/ReadVariableOp6^generator/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp*^generator/conv1d_5/BiasAdd/ReadVariableOp6^generator/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp2^generator/conv1d_transpose/BiasAdd/ReadVariableOpH^generator/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp4^generator/conv1d_transpose_1/BiasAdd/ReadVariableOpJ^generator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2R
'generator/conv1d/BiasAdd/ReadVariableOp'generator/conv1d/BiasAdd/ReadVariableOp2j
3generator/conv1d/Conv1D/ExpandDims_1/ReadVariableOp3generator/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2V
)generator/conv1d_1/BiasAdd/ReadVariableOp)generator/conv1d_1/BiasAdd/ReadVariableOp2n
5generator/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp5generator/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2V
)generator/conv1d_2/BiasAdd/ReadVariableOp)generator/conv1d_2/BiasAdd/ReadVariableOp2n
5generator/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp5generator/conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2V
)generator/conv1d_3/BiasAdd/ReadVariableOp)generator/conv1d_3/BiasAdd/ReadVariableOp2n
5generator/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp5generator/conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp2V
)generator/conv1d_4/BiasAdd/ReadVariableOp)generator/conv1d_4/BiasAdd/ReadVariableOp2n
5generator/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp5generator/conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp2V
)generator/conv1d_5/BiasAdd/ReadVariableOp)generator/conv1d_5/BiasAdd/ReadVariableOp2n
5generator/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp5generator/conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp2f
1generator/conv1d_transpose/BiasAdd/ReadVariableOp1generator/conv1d_transpose/BiasAdd/ReadVariableOp2?
Ggenerator/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpGgenerator/conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2j
3generator/conv1d_transpose_1/BiasAdd/ReadVariableOp3generator/conv1d_transpose_1/BiasAdd/ReadVariableOp2?
Igenerator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpIgenerator/conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:S O
,
_output_shapes
:??????????

_user_specified_namenoise
?*
?
K__inference_conv1d_transpose_layer_call_and_return_conditional_losses_10456

inputsZ
Dconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel: :
,biasadd_readvariableop_conv1d_transpose_bias:
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpDconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*"
_output_shapes
: *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"??????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :??????????????????*
squeeze_dims

BiasAdd/ReadVariableOpReadVariableOp,biasadd_readvariableop_conv1d_transpose_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
d
H__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_10530

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_10586

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_9405

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_conv1d_layer_call_and_return_conditional_losses_10368

inputsF
0conv1d_expanddims_1_readvariableop_conv1d_kernel: 0
"biasadd_readvariableop_conv1d_bias: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp0conv1d_expanddims_1_readvariableop_conv1d_kernel*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????u
BiasAdd/ReadVariableOpReadVariableOp"biasadd_readvariableop_conv1d_bias*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
2__inference_conv1d_transpose_1_layer_call_fn_10537

inputs/
conv1d_transpose_1_kernel:%
conv1d_transpose_1_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_transpose_1_kernelconv1d_transpose_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_9294|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:??????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_10400

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_1_kernel:  2
$biasadd_readvariableop_conv1d_1_bias: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_1_kernel*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_1_bias*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?*
?
__inference__traced_save_10711
file_prefix,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop6
2savev2_conv1d_transpose_kernel_read_readvariableop4
0savev2_conv1d_transpose_bias_read_readvariableop.
*savev2_conv1d_2_kernel_read_readvariableop,
(savev2_conv1d_2_bias_read_readvariableop.
*savev2_conv1d_3_kernel_read_readvariableop,
(savev2_conv1d_3_bias_read_readvariableop8
4savev2_conv1d_transpose_1_kernel_read_readvariableop6
2savev2_conv1d_transpose_1_bias_read_readvariableop.
*savev2_conv1d_4_kernel_read_readvariableop,
(savev2_conv1d_4_bias_read_readvariableop.
*savev2_conv1d_5_kernel_read_readvariableop,
(savev2_conv1d_5_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop2savev2_conv1d_transpose_kernel_read_readvariableop0savev2_conv1d_transpose_bias_read_readvariableop*savev2_conv1d_2_kernel_read_readvariableop(savev2_conv1d_2_bias_read_readvariableop*savev2_conv1d_3_kernel_read_readvariableop(savev2_conv1d_3_bias_read_readvariableop4savev2_conv1d_transpose_1_kernel_read_readvariableop2savev2_conv1d_transpose_1_bias_read_readvariableop*savev2_conv1d_4_kernel_read_readvariableop(savev2_conv1d_4_bias_read_readvariableop*savev2_conv1d_5_kernel_read_readvariableop(savev2_conv1d_5_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : : :::::::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 

_output_shapes
: :($
"
_output_shapes
:  : 

_output_shapes
: :($
"
_output_shapes
: : 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::(	$
"
_output_shapes
:: 


_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
d
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_10498

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:??????????*
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_10010	
noise#
conv1d_kernel: 
conv1d_bias: %
conv1d_1_kernel:  
conv1d_1_bias: -
conv1d_transpose_kernel: #
conv1d_transpose_bias:%
conv1d_2_kernel:
conv1d_2_bias:%
conv1d_3_kernel:
conv1d_3_bias:/
conv1d_transpose_1_kernel:%
conv1d_transpose_1_bias:%
conv1d_4_kernel:
conv1d_4_bias:%
conv1d_5_kernel:
conv1d_5_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallnoiseconv1d_kernelconv1d_biasconv1d_1_kernelconv1d_1_biasconv1d_transpose_kernelconv1d_transpose_biasconv1d_2_kernelconv1d_2_biasconv1d_3_kernelconv1d_3_biasconv1d_transpose_1_kernelconv1d_transpose_1_biasconv1d_4_kernelconv1d_4_biasconv1d_5_kernelconv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_9164t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:??????????

_user_specified_namenoise
?
G
+__inference_leaky_re_lu_layer_call_fn_10373

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_9369e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? "
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_10488

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_2_kernel:2
$biasadd_readvariableop_conv1d_2_bias:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_2_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_2_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?B
?
C__inference_generator_layer_call_and_return_conditional_losses_9807

inputs*
conv1d_conv1d_kernel:  
conv1d_conv1d_bias: .
conv1d_1_conv1d_1_kernel:  $
conv1d_1_conv1d_1_bias: >
(conv1d_transpose_conv1d_transpose_kernel: 4
&conv1d_transpose_conv1d_transpose_bias:.
conv1d_2_conv1d_2_kernel:$
conv1d_2_conv1d_2_bias:.
conv1d_3_conv1d_3_kernel:$
conv1d_3_conv1d_3_bias:B
,conv1d_transpose_1_conv1d_transpose_1_kernel:8
*conv1d_transpose_1_conv1d_transpose_1_bias:.
conv1d_4_conv1d_4_kernel:$
conv1d_4_conv1d_4_bias:.
conv1d_5_conv1d_5_kernel:$
conv1d_5_conv1d_5_bias:
identity??conv1d/StatefulPartitionedCall? conv1d_1/StatefulPartitionedCall? conv1d_2/StatefulPartitionedCall? conv1d_3/StatefulPartitionedCall? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall?(conv1d_transpose/StatefulPartitionedCall?*conv1d_transpose_1/StatefulPartitionedCall?
conv1d/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_conv1d_kernelconv1d_conv1d_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_conv1d_layer_call_and_return_conditional_losses_9360?
leaky_re_lu/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_9369?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0conv1d_1_conv1d_1_kernelconv1d_1_conv1d_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_1_layer_call_and_return_conditional_losses_9386?
leaky_re_lu_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_9395?
(conv1d_transpose/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0(conv1d_transpose_conv1d_transpose_kernel&conv1d_transpose_conv1d_transpose_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_9207?
leaky_re_lu_2/PartitionedCallPartitionedCall1conv1d_transpose/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_9405?
 conv1d_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0conv1d_2_conv1d_2_kernelconv1d_2_conv1d_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_2_layer_call_and_return_conditional_losses_9422?
leaky_re_lu_3/PartitionedCallPartitionedCall)conv1d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_9431?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0conv1d_3_conv1d_3_kernelconv1d_3_conv1d_3_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_3_layer_call_and_return_conditional_losses_9448?
leaky_re_lu_4/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_9457?
*conv1d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_4/PartitionedCall:output:0,conv1d_transpose_1_conv1d_transpose_1_kernel*conv1d_transpose_1_conv1d_transpose_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_9294?
leaky_re_lu_5/PartitionedCallPartitionedCall3conv1d_transpose_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_9467?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_5/PartitionedCall:output:0conv1d_4_conv1d_4_kernelconv1d_4_conv1d_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_4_layer_call_and_return_conditional_losses_9484?
leaky_re_lu_6/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_9493?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_6/PartitionedCall:output:0conv1d_5_conv1d_5_kernelconv1d_5_conv1d_5_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_conv1d_5_layer_call_and_return_conditional_losses_9510}
IdentityIdentity)conv1d_5/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall!^conv1d_2/StatefulPartitionedCall!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall)^conv1d_transpose/StatefulPartitionedCall+^conv1d_transpose_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 conv1d_2/StatefulPartitionedCall conv1d_2/StatefulPartitionedCall2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2T
(conv1d_transpose/StatefulPartitionedCall(conv1d_transpose/StatefulPartitionedCall2X
*conv1d_transpose_1/StatefulPartitionedCall*conv1d_transpose_1/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
B__inference_conv1d_1_layer_call_and_return_conditional_losses_9386

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_1_kernel:  2
$biasadd_readvariableop_conv1d_1_bias: 
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_1_kernel*"
_output_shapes
:  *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_1_bias*
_output_shapes
: *
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:?????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
D__inference_generator_layer_call_and_return_conditional_losses_10199

inputsM
7conv1d_conv1d_expanddims_1_readvariableop_conv1d_kernel: 7
)conv1d_biasadd_readvariableop_conv1d_bias: Q
;conv1d_1_conv1d_expanddims_1_readvariableop_conv1d_1_kernel:  ;
-conv1d_1_biasadd_readvariableop_conv1d_1_bias: k
Uconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel: K
=conv1d_transpose_biasadd_readvariableop_conv1d_transpose_bias:Q
;conv1d_2_conv1d_expanddims_1_readvariableop_conv1d_2_kernel:;
-conv1d_2_biasadd_readvariableop_conv1d_2_bias:Q
;conv1d_3_conv1d_expanddims_1_readvariableop_conv1d_3_kernel:;
-conv1d_3_biasadd_readvariableop_conv1d_3_bias:o
Yconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel:O
Aconv1d_transpose_1_biasadd_readvariableop_conv1d_transpose_1_bias:Q
;conv1d_4_conv1d_expanddims_1_readvariableop_conv1d_4_kernel:;
-conv1d_4_biasadd_readvariableop_conv1d_4_bias:Q
;conv1d_5_conv1d_expanddims_1_readvariableop_conv1d_5_kernel:;
-conv1d_5_biasadd_readvariableop_conv1d_5_bias:
identity??conv1d/BiasAdd/ReadVariableOp?)conv1d/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_2/BiasAdd/ReadVariableOp?+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_3/BiasAdd/ReadVariableOp?+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_4/BiasAdd/ReadVariableOp?+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp?conv1d_5/BiasAdd/ReadVariableOp?+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp?'conv1d_transpose/BiasAdd/ReadVariableOp?=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp?)conv1d_transpose_1/BiasAdd/ReadVariableOp??conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpg
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d/Conv1D/ExpandDims
ExpandDimsinputs%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp7conv1d_conv1d_expanddims_1_readvariableop_conv1d_kernel*"
_output_shapes
: *
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ?
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
conv1d/BiasAdd/ReadVariableOpReadVariableOp)conv1d_biasadd_readvariableop_conv1d_bias*
_output_shapes
: *
dtype0?
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? y
leaky_re_lu/LeakyRelu	LeakyReluconv1d/BiasAdd:output:0*,
_output_shapes
:?????????? *
alpha%???>i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDims#leaky_re_lu/LeakyRelu:activations:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_1_conv1d_expanddims_1_readvariableop_conv1d_1_kernel*"
_output_shapes
:  *
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  ?
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:?????????? *
paddingSAME*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp-conv1d_1_biasadd_readvariableop_conv1d_1_bias*
_output_shapes
: *
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:?????????? }
leaky_re_lu_1/LeakyRelu	LeakyReluconv1d_1/BiasAdd:output:0*,
_output_shapes
:?????????? *
alpha%???>k
conv1d_transpose/ShapeShape%leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/Shape:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/Shape:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
conv1d_transpose/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/mulMul)conv1d_transpose/strided_slice_1:output:0conv1d_transpose/mul/y:output:0*
T0*
_output_shapes
: Z
conv1d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/stackPack'conv1d_transpose/strided_slice:output:0conv1d_transpose/mul:z:0!conv1d_transpose/stack/2:output:0*
N*
T0*
_output_shapes
:r
0conv1d_transpose/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
,conv1d_transpose/conv1d_transpose/ExpandDims
ExpandDims%leaky_re_lu_1/LeakyRelu:activations:09conv1d_transpose/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? ?
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpUconv1d_transpose_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*"
_output_shapes
: *
dtype0t
2conv1d_transpose/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
.conv1d_transpose/conv1d_transpose/ExpandDims_1
ExpandDimsEconv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0;conv1d_transpose/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: 
5conv1d_transpose/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7conv1d_transpose/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7conv1d_transpose/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/conv1d_transpose/conv1d_transpose/strided_sliceStridedSliceconv1d_transpose/stack:output:0>conv1d_transpose/conv1d_transpose/strided_slice/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_1:output:0@conv1d_transpose/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
7conv1d_transpose/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose/conv1d_transpose/strided_slice_1StridedSliceconv1d_transpose/stack:output:0@conv1d_transpose/conv1d_transpose/strided_slice_1/stack:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_1:output:0Bconv1d_transpose/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask{
1conv1d_transpose/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:o
-conv1d_transpose/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
(conv1d_transpose/conv1d_transpose/concatConcatV28conv1d_transpose/conv1d_transpose/strided_slice:output:0:conv1d_transpose/conv1d_transpose/concat/values_1:output:0:conv1d_transpose/conv1d_transpose/strided_slice_1:output:06conv1d_transpose/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
!conv1d_transpose/conv1d_transposeConv2DBackpropInput1conv1d_transpose/conv1d_transpose/concat:output:07conv1d_transpose/conv1d_transpose/ExpandDims_1:output:05conv1d_transpose/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
)conv1d_transpose/conv1d_transpose/SqueezeSqueeze*conv1d_transpose/conv1d_transpose:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
?
'conv1d_transpose/BiasAdd/ReadVariableOpReadVariableOp=conv1d_transpose_biasadd_readvariableop_conv1d_transpose_bias*
_output_shapes
:*
dtype0?
conv1d_transpose/BiasAddBiasAdd2conv1d_transpose/conv1d_transpose/Squeeze:output:0/conv1d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
leaky_re_lu_2/LeakyRelu	LeakyRelu!conv1d_transpose/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>i
conv1d_2/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_2/Conv1D/ExpandDims
ExpandDims%leaky_re_lu_2/LeakyRelu:activations:0'conv1d_2/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_2_conv1d_expanddims_1_readvariableop_conv1d_2_kernel*"
_output_shapes
:*
dtype0b
 conv1d_2/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_2/Conv1D/ExpandDims_1
ExpandDims3conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_2/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_2/Conv1DConv2D#conv1d_2/Conv1D/ExpandDims:output:0%conv1d_2/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_2/Conv1D/SqueezeSqueezeconv1d_2/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_2/BiasAdd/ReadVariableOpReadVariableOp-conv1d_2_biasadd_readvariableop_conv1d_2_bias*
_output_shapes
:*
dtype0?
conv1d_2/BiasAddBiasAdd conv1d_2/Conv1D/Squeeze:output:0'conv1d_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????}
leaky_re_lu_3/LeakyRelu	LeakyReluconv1d_2/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>i
conv1d_3/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_3/Conv1D/ExpandDims
ExpandDims%leaky_re_lu_3/LeakyRelu:activations:0'conv1d_3/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_3_conv1d_expanddims_1_readvariableop_conv1d_3_kernel*"
_output_shapes
:*
dtype0b
 conv1d_3/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_3/Conv1D/ExpandDims_1
ExpandDims3conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_3/Conv1DConv2D#conv1d_3/Conv1D/ExpandDims:output:0%conv1d_3/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_3/Conv1D/SqueezeSqueezeconv1d_3/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp-conv1d_3_biasadd_readvariableop_conv1d_3_bias*
_output_shapes
:*
dtype0?
conv1d_3/BiasAddBiasAdd conv1d_3/Conv1D/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????}
leaky_re_lu_4/LeakyRelu	LeakyReluconv1d_3/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>m
conv1d_transpose_1/ShapeShape%leaky_re_lu_4/LeakyRelu:activations:0*
T0*
_output_shapes
:p
&conv1d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose_1/strided_sliceStridedSlice!conv1d_transpose_1/Shape:output:0/conv1d_transpose_1/strided_slice/stack:output:01conv1d_transpose_1/strided_slice/stack_1:output:01conv1d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
(conv1d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv1d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv1d_transpose_1/strided_slice_1StridedSlice!conv1d_transpose_1/Shape:output:01conv1d_transpose_1/strided_slice_1/stack:output:03conv1d_transpose_1/strided_slice_1/stack_1:output:03conv1d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv1d_transpose_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_1/mulMul+conv1d_transpose_1/strided_slice_1:output:0!conv1d_transpose_1/mul/y:output:0*
T0*
_output_shapes
: \
conv1d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose_1/stackPack)conv1d_transpose_1/strided_slice:output:0conv1d_transpose_1/mul:z:0#conv1d_transpose_1/stack/2:output:0*
N*
T0*
_output_shapes
:t
2conv1d_transpose_1/conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
.conv1d_transpose_1/conv1d_transpose/ExpandDims
ExpandDims%leaky_re_lu_4/LeakyRelu:activations:0;conv1d_transpose_1/conv1d_transpose/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpYconv1d_transpose_1_conv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_1_kernel*"
_output_shapes
:*
dtype0v
4conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
0conv1d_transpose_1/conv1d_transpose/ExpandDims_1
ExpandDimsGconv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0=conv1d_transpose_1/conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
7conv1d_transpose_1/conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9conv1d_transpose_1/conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1conv1d_transpose_1/conv1d_transpose/strided_sliceStridedSlice!conv1d_transpose_1/stack:output:0@conv1d_transpose_1/conv1d_transpose/strided_slice/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_1:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask?
9conv1d_transpose_1/conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ?
;conv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3conv1d_transpose_1/conv1d_transpose/strided_slice_1StridedSlice!conv1d_transpose_1/stack:output:0Bconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_1:output:0Dconv1d_transpose_1/conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
3conv1d_transpose_1/conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:q
/conv1d_transpose_1/conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
*conv1d_transpose_1/conv1d_transpose/concatConcatV2:conv1d_transpose_1/conv1d_transpose/strided_slice:output:0<conv1d_transpose_1/conv1d_transpose/concat/values_1:output:0<conv1d_transpose_1/conv1d_transpose/strided_slice_1:output:08conv1d_transpose_1/conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
#conv1d_transpose_1/conv1d_transposeConv2DBackpropInput3conv1d_transpose_1/conv1d_transpose/concat:output:09conv1d_transpose_1/conv1d_transpose/ExpandDims_1:output:07conv1d_transpose_1/conv1d_transpose/ExpandDims:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
+conv1d_transpose_1/conv1d_transpose/SqueezeSqueeze,conv1d_transpose_1/conv1d_transpose:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
?
)conv1d_transpose_1/BiasAdd/ReadVariableOpReadVariableOpAconv1d_transpose_1_biasadd_readvariableop_conv1d_transpose_1_bias*
_output_shapes
:*
dtype0?
conv1d_transpose_1/BiasAddBiasAdd4conv1d_transpose_1/conv1d_transpose/Squeeze:output:01conv1d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
leaky_re_lu_5/LeakyRelu	LeakyRelu#conv1d_transpose_1/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>i
conv1d_4/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_4/Conv1D/ExpandDims
ExpandDims%leaky_re_lu_5/LeakyRelu:activations:0'conv1d_4/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_4_conv1d_expanddims_1_readvariableop_conv1d_4_kernel*"
_output_shapes
:*
dtype0b
 conv1d_4/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_4/Conv1D/ExpandDims_1
ExpandDims3conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_4/Conv1DConv2D#conv1d_4/Conv1D/ExpandDims:output:0%conv1d_4/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_4/Conv1D/SqueezeSqueezeconv1d_4/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp-conv1d_4_biasadd_readvariableop_conv1d_4_bias*
_output_shapes
:*
dtype0?
conv1d_4/BiasAddBiasAdd conv1d_4/Conv1D/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????}
leaky_re_lu_6/LeakyRelu	LeakyReluconv1d_4/BiasAdd:output:0*,
_output_shapes
:??????????*
alpha%???>i
conv1d_5/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_5/Conv1D/ExpandDims
ExpandDims%leaky_re_lu_6/LeakyRelu:activations:0'conv1d_5/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp;conv1d_5_conv1d_expanddims_1_readvariableop_conv1d_5_kernel*"
_output_shapes
:*
dtype0b
 conv1d_5/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_5/Conv1D/ExpandDims_1
ExpandDims3conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
conv1d_5/Conv1DConv2D#conv1d_5/Conv1D/ExpandDims:output:0%conv1d_5/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
conv1d_5/Conv1D/SqueezeSqueezeconv1d_5/Conv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

??????????
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp-conv1d_5_biasadd_readvariableop_conv1d_5_bias*
_output_shapes
:*
dtype0?
conv1d_5/BiasAddBiasAdd conv1d_5/Conv1D/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????m
IdentityIdentityconv1d_5/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_2/BiasAdd/ReadVariableOp,^conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp(^conv1d_transpose/BiasAdd/ReadVariableOp>^conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp*^conv1d_transpose_1/BiasAdd/ReadVariableOp@^conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_2/BiasAdd/ReadVariableOpconv1d_2/BiasAdd/ReadVariableOp2Z
+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_2/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_3/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_4/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_5/Conv1D/ExpandDims_1/ReadVariableOp2R
'conv1d_transpose/BiasAdd/ReadVariableOp'conv1d_transpose/BiasAdd/ReadVariableOp2~
=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp=conv1d_transpose/conv1d_transpose/ExpandDims_1/ReadVariableOp2V
)conv1d_transpose_1/BiasAdd/ReadVariableOp)conv1d_transpose_1/BiasAdd/ReadVariableOp2?
?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp?conv1d_transpose_1/conv1d_transpose/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?+
?
J__inference_conv1d_transpose_layer_call_and_return_conditional_losses_9207

inputsZ
Dconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel: :
,biasadd_readvariableop_conv1d_transpose_bias:
identity??BiasAdd/ReadVariableOp?,conv1d_transpose/ExpandDims_1/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
stack/2Const*
_output_shapes
: *
dtype0*
value	B :n
stackPackstrided_slice:output:0mul:z:0stack/2:output:0*
N*
T0*
_output_shapes
:a
conv1d_transpose/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
conv1d_transpose/ExpandDims
ExpandDimsinputs(conv1d_transpose/ExpandDims/dim:output:0*
T0*8
_output_shapes&
$:"?????????????????? ?
,conv1d_transpose/ExpandDims_1/ReadVariableOpReadVariableOpDconv1d_transpose_expanddims_1_readvariableop_conv1d_transpose_kernel*"
_output_shapes
: *
dtype0c
!conv1d_transpose/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/ExpandDims_1
ExpandDims4conv1d_transpose/ExpandDims_1/ReadVariableOp:value:0*conv1d_transpose/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: n
$conv1d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv1d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv1d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv1d_transpose/strided_sliceStridedSlicestack:output:0-conv1d_transpose/strided_slice/stack:output:0/conv1d_transpose/strided_slice/stack_1:output:0/conv1d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskp
&conv1d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(conv1d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(conv1d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv1d_transpose/strided_slice_1StridedSlicestack:output:0/conv1d_transpose/strided_slice_1/stack:output:01conv1d_transpose/strided_slice_1/stack_1:output:01conv1d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskj
 conv1d_transpose/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:^
conv1d_transpose/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_transpose/concatConcatV2'conv1d_transpose/strided_slice:output:0)conv1d_transpose/concat/values_1:output:0)conv1d_transpose/strided_slice_1:output:0%conv1d_transpose/concat/axis:output:0*
N*
T0*
_output_shapes
:?
conv1d_transposeConv2DBackpropInput conv1d_transpose/concat:output:0&conv1d_transpose/ExpandDims_1:output:0$conv1d_transpose/ExpandDims:output:0*
T0*8
_output_shapes&
$:"??????????????????*
paddingSAME*
strides
?
conv1d_transpose/SqueezeSqueezeconv1d_transpose:output:0*
T0*4
_output_shapes"
 :??????????????????*
squeeze_dims

BiasAdd/ReadVariableOpReadVariableOp,biasadd_readvariableop_conv1d_transpose_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAdd!conv1d_transpose/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????l
IdentityIdentityBiasAdd:output:0^NoOp*
T0*4
_output_shapes"
 :???????????????????
NoOpNoOp^BiasAdd/ReadVariableOp-^conv1d_transpose/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:?????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2\
,conv1d_transpose/ExpandDims_1/ReadVariableOp,conv1d_transpose/ExpandDims_1/ReadVariableOp:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_6_layer_call_fn_10613

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_9493e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_10520

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_3_kernel:2
$biasadd_readvariableop_conv1d_3_bias:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_3_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_3_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_4_layer_call_and_return_conditional_losses_10608

inputsH
2conv1d_expanddims_1_readvariableop_conv1d_4_kernel:2
$biasadd_readvariableop_conv1d_4_bias:
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:???????????
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_expanddims_1_readvariableop_conv1d_4_kernel*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims

?????????w
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_conv1d_4_bias*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_leaky_re_lu_layer_call_and_return_conditional_losses_9369

inputs
identity\
	LeakyRelu	LeakyReluinputs*,
_output_shapes
:?????????? *
alpha%???>d
IdentityIdentityLeakyRelu:activations:0*
T0*,
_output_shapes
:?????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs"?	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
<
noise3
serving_default_noise:0??????????A
conv1d_55
StatefulPartitionedCall:0??????????tensorflow/serving/predict:¾
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op"
_tf_keras_layer
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
?
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op"
_tf_keras_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
?
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias
 ?_jit_compiled_convolution_op"
_tf_keras_layer
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
?
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op"
_tf_keras_layer
?
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
?
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op"
_tf_keras_layer
?
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
?
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias
 l_jit_compiled_convolution_op"
_tf_keras_layer
?
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
?
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

ykernel
zbias
 {_jit_compiled_convolution_op"
_tf_keras_layer
?
|	variables
}trainable_variables
~regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
0
 1
.2
/3
=4
>5
L6
M7
[8
\9
j10
k11
y12
z13
?14
?15"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
(__inference_generator_layer_call_fn_9534
)__inference_generator_layer_call_fn_10031
)__inference_generator_layer_call_fn_10052
(__inference_generator_layer_call_fn_9917?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
D__inference_generator_layer_call_and_return_conditional_losses_10199
D__inference_generator_layer_call_and_return_conditional_losses_10346
C__inference_generator_layer_call_and_return_conditional_losses_9952
C__inference_generator_layer_call_and_return_conditional_losses_9987?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?B?
__inference__wrapped_model_9164noise"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-
?serving_default"
signature_map
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
&__inference_conv1d_layer_call_fn_10353?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
A__inference_conv1d_layer_call_and_return_conditional_losses_10368?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
#:! 2conv1d/kernel
: 2conv1d/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_leaky_re_lu_layer_call_fn_10373?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_10378?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_conv1d_1_layer_call_fn_10385?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_10400?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
%:#  2conv1d_1/kernel
: 2conv1d_1/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_leaky_re_lu_1_layer_call_fn_10405?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_10410?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_conv1d_transpose_layer_call_fn_10417?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
K__inference_conv1d_transpose_layer_call_and_return_conditional_losses_10456?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
-:+ 2conv1d_transpose/kernel
#:!2conv1d_transpose/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_leaky_re_lu_2_layer_call_fn_10461?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_10466?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_conv1d_2_layer_call_fn_10473?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_10488?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
%:#2conv1d_2/kernel
:2conv1d_2/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_leaky_re_lu_3_layer_call_fn_10493?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_10498?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_conv1d_3_layer_call_fn_10505?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_10520?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
%:#2conv1d_3/kernel
:2conv1d_3/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_leaky_re_lu_4_layer_call_fn_10525?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_10530?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_conv1d_transpose_1_layer_call_fn_10537?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
M__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_10576?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
/:-2conv1d_transpose_1/kernel
%:#2conv1d_transpose_1/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_leaky_re_lu_5_layer_call_fn_10581?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_10586?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_conv1d_4_layer_call_fn_10593?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_conv1d_4_layer_call_and_return_conditional_losses_10608?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
%:#2conv1d_4/kernel
:2conv1d_4/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
|	variables
}trainable_variables
~regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_leaky_re_lu_6_layer_call_fn_10613?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_10618?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
(__inference_conv1d_5_layer_call_fn_10625?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
C__inference_conv1d_5_layer_call_and_return_conditional_losses_10640?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
%:#2conv1d_5/kernel
:2conv1d_5/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
?
0
 1
.2
/3
=4
>5
L6
M7
[8
\9
j10
k11
y12
z13
?14
?15"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_generator_layer_call_fn_9534noise"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
)__inference_generator_layer_call_fn_10031inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
)__inference_generator_layer_call_fn_10052inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
(__inference_generator_layer_call_fn_9917noise"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_generator_layer_call_and_return_conditional_losses_10199inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
D__inference_generator_layer_call_and_return_conditional_losses_10346inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_generator_layer_call_and_return_conditional_losses_9952noise"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_generator_layer_call_and_return_conditional_losses_9987noise"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_10010noise"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_conv1d_layer_call_fn_10353inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
A__inference_conv1d_layer_call_and_return_conditional_losses_10368inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
+__inference_leaky_re_lu_layer_call_fn_10373inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_10378inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_conv1d_1_layer_call_fn_10385inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_conv1d_1_layer_call_and_return_conditional_losses_10400inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_leaky_re_lu_1_layer_call_fn_10405inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_10410inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_conv1d_transpose_layer_call_fn_10417inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
K__inference_conv1d_transpose_layer_call_and_return_conditional_losses_10456inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_leaky_re_lu_2_layer_call_fn_10461inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_10466inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_conv1d_2_layer_call_fn_10473inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_10488inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_leaky_re_lu_3_layer_call_fn_10493inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_10498inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_conv1d_3_layer_call_fn_10505inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_10520inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_leaky_re_lu_4_layer_call_fn_10525inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_10530inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
2__inference_conv1d_transpose_1_layer_call_fn_10537inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
M__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_10576inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_leaky_re_lu_5_layer_call_fn_10581inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_10586inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_conv1d_4_layer_call_fn_10593inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_conv1d_4_layer_call_and_return_conditional_losses_10608inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_leaky_re_lu_6_layer_call_fn_10613inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_10618inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
(__inference_conv1d_5_layer_call_fn_10625inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
C__inference_conv1d_5_layer_call_and_return_conditional_losses_10640inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_9164? ./=>LM[\jkyz??3?0
)?&
$?!
noise??????????
? "8?5
3
conv1d_5'?$
conv1d_5???????????
C__inference_conv1d_1_layer_call_and_return_conditional_losses_10400f./4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
(__inference_conv1d_1_layer_call_fn_10385Y./4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
C__inference_conv1d_2_layer_call_and_return_conditional_losses_10488fLM4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
(__inference_conv1d_2_layer_call_fn_10473YLM4?1
*?'
%?"
inputs??????????
? "????????????
C__inference_conv1d_3_layer_call_and_return_conditional_losses_10520f[\4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
(__inference_conv1d_3_layer_call_fn_10505Y[\4?1
*?'
%?"
inputs??????????
? "????????????
C__inference_conv1d_4_layer_call_and_return_conditional_losses_10608fyz4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
(__inference_conv1d_4_layer_call_fn_10593Yyz4?1
*?'
%?"
inputs??????????
? "????????????
C__inference_conv1d_5_layer_call_and_return_conditional_losses_10640h??4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
(__inference_conv1d_5_layer_call_fn_10625[??4?1
*?'
%?"
inputs??????????
? "????????????
A__inference_conv1d_layer_call_and_return_conditional_losses_10368f 4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0?????????? 
? ?
&__inference_conv1d_layer_call_fn_10353Y 4?1
*?'
%?"
inputs??????????
? "??????????? ?
M__inference_conv1d_transpose_1_layer_call_and_return_conditional_losses_10576vjk<?9
2?/
-?*
inputs??????????????????
? "2?/
(?%
0??????????????????
? ?
2__inference_conv1d_transpose_1_layer_call_fn_10537ijk<?9
2?/
-?*
inputs??????????????????
? "%?"???????????????????
K__inference_conv1d_transpose_layer_call_and_return_conditional_losses_10456v=><?9
2?/
-?*
inputs?????????????????? 
? "2?/
(?%
0??????????????????
? ?
0__inference_conv1d_transpose_layer_call_fn_10417i=><?9
2?/
-?*
inputs?????????????????? 
? "%?"???????????????????
D__inference_generator_layer_call_and_return_conditional_losses_10199~ ./=>LM[\jkyz??<?9
2?/
%?"
inputs??????????
p 

 
? "*?'
 ?
0??????????
? ?
D__inference_generator_layer_call_and_return_conditional_losses_10346~ ./=>LM[\jkyz??<?9
2?/
%?"
inputs??????????
p

 
? "*?'
 ?
0??????????
? ?
C__inference_generator_layer_call_and_return_conditional_losses_9952} ./=>LM[\jkyz??;?8
1?.
$?!
noise??????????
p 

 
? "*?'
 ?
0??????????
? ?
C__inference_generator_layer_call_and_return_conditional_losses_9987} ./=>LM[\jkyz??;?8
1?.
$?!
noise??????????
p

 
? "*?'
 ?
0??????????
? ?
)__inference_generator_layer_call_fn_10031q ./=>LM[\jkyz??<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
)__inference_generator_layer_call_fn_10052q ./=>LM[\jkyz??<?9
2?/
%?"
inputs??????????
p

 
? "????????????
(__inference_generator_layer_call_fn_9534p ./=>LM[\jkyz??;?8
1?.
$?!
noise??????????
p 

 
? "????????????
(__inference_generator_layer_call_fn_9917p ./=>LM[\jkyz??;?8
1?.
$?!
noise??????????
p

 
? "????????????
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_10410b4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
-__inference_leaky_re_lu_1_layer_call_fn_10405U4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_10466b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
-__inference_leaky_re_lu_2_layer_call_fn_10461U4?1
*?'
%?"
inputs??????????
? "????????????
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_10498b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
-__inference_leaky_re_lu_3_layer_call_fn_10493U4?1
*?'
%?"
inputs??????????
? "????????????
H__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_10530b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
-__inference_leaky_re_lu_4_layer_call_fn_10525U4?1
*?'
%?"
inputs??????????
? "????????????
H__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_10586b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
-__inference_leaky_re_lu_5_layer_call_fn_10581U4?1
*?'
%?"
inputs??????????
? "????????????
H__inference_leaky_re_lu_6_layer_call_and_return_conditional_losses_10618b4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
-__inference_leaky_re_lu_6_layer_call_fn_10613U4?1
*?'
%?"
inputs??????????
? "????????????
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_10378b4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
+__inference_leaky_re_lu_layer_call_fn_10373U4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
#__inference_signature_wrapper_10010? ./=>LM[\jkyz??<?9
? 
2?/
-
noise$?!
noise??????????"8?5
3
conv1d_5'?$
conv1d_5??????????