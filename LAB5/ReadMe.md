**arm_angle_PID_control.m:** This script is used for plotting root locus by using calculated model parameters [a,b, beta, N].<br /> 
<br /> **model_parameters.m:** This script is a practical formulation of model parameters to reduce the time cost if we need to re-calculate model parameters.<br /> 
<br /> **Case1_bestKp_Kd.m:** This script is for method 1 as tunning strategy where best values of Kp-Kd were used and Ki was slowly increased.<br /> 
<br /> **Case2.m:** This script contains 5 cases that were used in tunning strategy in method2, where root locus in arm_angle_PID_control.m was used.<br /> 
<br /> **Case3.m:** This scripts has the plot commands for Ziegler–Nichols Method.<br /> 
<br /> **data_case1.mat, data_case2.mat, data_case3.mat:** Please download corresponding data before running Case1_bestKp_Kd.m, Case2.m and Case3.m.<br /> 
<br /> **fitered_armangle.m:** Contains the plots commands for filtered arm angle vs arm angle.<br />
<br />**model_vs_armangle.m:** This script contains the plot codes for observing the difference between created own simulink model and arm angel.<br />
<br />**data_own_model.mat:** Please download before you run model_vs_armangle.m.<br />
<br />**own_model.m:** Used for saving model parameters Ts, a, b, g and beta as short cut beforu running simulink.<br />
