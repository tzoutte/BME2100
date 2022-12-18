% Read activation and geometry data
Apex=readmatrix('13-10-29-Apex-Activation.dat');
LV=readmatrix('13-10-29-LV-Activation.dat'); 
RV=readmatrix('13-10-29-RV-Activation.dat');
Mesh=dlmread('13-10-29-CARP-Mesh.biv.pts');
Mesh(1,:)=[]; % Remove first row
% Display total activation times and initial stimulation sites
for i=[Apex,LV,RV]
    disp(max(i));
    disp(mean(Mesh_Pts(i==min(i),:)));
    clear i;
end














