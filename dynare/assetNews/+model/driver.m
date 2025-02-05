%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'model';
M_.dynare_version = '5.3';
oo_.dynare_version = '5.3';
options_.dynare_version = '5.3';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'z'};
M_.exo_names_tex(1) = {'z'};
M_.exo_names_long(1) = {'z'};
M_.exo_names(2) = {'n'};
M_.exo_names_tex(2) = {'n'};
M_.exo_names_long(2) = {'n'};
M_.endo_names = cell(3,1);
M_.endo_names_tex = cell(3,1);
M_.endo_names_long = cell(3,1);
M_.endo_names(1) = {'p'};
M_.endo_names_tex(1) = {'p'};
M_.endo_names_long(1) = {'p'};
M_.endo_names(2) = {'d'};
M_.endo_names_tex(2) = {'d'};
M_.endo_names_long(2) = {'d'};
M_.endo_names(3) = {'AUX_EXO_LAG_3_0'};
M_.endo_names_tex(3) = {'AUX\_EXO\_LAG\_3\_0'};
M_.endo_names_long(3) = {'AUX_EXO_LAG_3_0'};
M_.endo_partitions = struct();
M_.param_names = cell(5,1);
M_.param_names_tex = cell(5,1);
M_.param_names_long = cell(5,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'gamma'};
M_.param_names_tex(2) = {'gamma'};
M_.param_names_long(2) = {'gamma'};
M_.param_names(3) = {'sigma1'};
M_.param_names_tex(3) = {'sigma1'};
M_.param_names_long(3) = {'sigma1'};
M_.param_names(4) = {'sigma2'};
M_.param_names_tex(4) = {'sigma2'};
M_.param_names_long(4) = {'sigma2'};
M_.param_names(5) = {'rho'};
M_.param_names_tex(5) = {'rho'};
M_.param_names_long(5) = {'rho'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 3;
M_.param_nbr = 5;
M_.orig_endo_nbr = 2;
M_.aux_vars(1).endo_index = 3;
M_.aux_vars(1).type = 3;
M_.aux_vars(1).orig_index = 2;
M_.aux_vars(1).orig_lead_lag = 0;
M_.aux_vars(1).orig_expr = 'n';
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [1 2];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 2;
M_.eq_nbr = 3;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 1;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 3 6;
 1 4 7;
 2 5 0;]';
M_.nstatic = 0;
M_.nfwrd   = 1;
M_.npred   = 1;
M_.nboth   = 1;
M_.nsfwrd   = 2;
M_.nspred   = 2;
M_.ndynamic   = 3;
M_.dynamic_tmp_nbr = [3; 3; 3; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'd' ;
  2 , 'name' , '2' ;
};
M_.mapping.p.eqidx = [2 ];
M_.mapping.d.eqidx = [1 2 ];
M_.mapping.z.eqidx = [1 ];
M_.mapping.n.eqidx = [1 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [2 3 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(3, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(5, 1);
M_.endo_trends = struct('deflator', cell(3, 1), 'log_deflator', cell(3, 1), 'growth_factor', cell(3, 1), 'log_growth_factor', cell(3, 1));
M_.NNZDerivatives = [10; 15; 14; ];
M_.static_tmp_nbr = [1; 1; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.99;
beta = M_.params(1);
M_.params(2) = 2.0;
gamma = M_.params(2);
M_.params(5) = 0.9;
rho = M_.params(5);
M_.params(3) = 0.1;
sigma1 = M_.params(3);
M_.params(4) = 0.1;
sigma2 = M_.params(4);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(2) = 1;
oo_.steady_state(3)=oo_.exo_steady_state(2);
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
resid;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (1)^2;
options_.k_order_solver = true;
options_.order = 3;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
var_list_ = {'d'};
rplot(var_list_);
var_list_ = {'p'};
rplot(var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'model_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
