% Single-Stage Filter with Same Rippleho

part_a;

% From part (a), we already calculated H_target
H_target = H_mag;  % This is |H_two_stage| at switching frequency

% For single-stage filter at switching frequency
% H(jω) = 1 / (1 + jω/(Q*ω_o) - ω²/ω_o²)

Q1_new = 1;
omega_sw = 2*pi*50e3;

% We need to solve: |H(jω_sw)| = H_target
% Let's substitute s = jω_sw
% |H| = 1 / |1 + jω_sw/(ω_o) - ω_sw²/ω_o²|
% |H| = 1 / √[(1 - ω_sw²/ω_o²)² + (ω_sw/ω_o)²]

% This is a nonlinear equation in ω_o, so we solve numerically
% by trying different ω_o values and finding which gives H_target

% Search for the right ω_o
omega_o_test = logspace(3, 6, 10000);  % Test from 10³ to 10⁶ rad/s

H_single_test = zeros(size(omega_o_test));
for i = 1:length(omega_o_test)
    omega_o = omega_o_test(i);
    
    % Real and imaginary parts of denominator
    real_part = 1 - omega_sw^2/omega_o^2;
    imag_part = omega_sw/(Q1_new*omega_o);
    
    % Magnitude
    H_single_test(i) = 1 / sqrt(real_part^2 + imag_part^2);
end

% Find the ω_o that gives us H_target
[~, idx] = min(abs(H_single_test - H_target));
omega_o_new = omega_o_test(idx);

fprintf('Required ω_o1 = %.2f rad/s\n', omega_o_new);

% Now calculate L1 and C1
L1_new = 1/omega_o_new;  % Since ω_o = 1/L1 when C1 = L1
C1_new = 1/omega_o_new;  % C1 = L1

fprintf('L1 = %.2f μH\n', L1_new*1e6);
fprintf('C1 = %.2f μF\n', C1_new*1e6);