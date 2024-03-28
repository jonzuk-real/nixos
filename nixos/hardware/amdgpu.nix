{


boot.initrd.kernelModules = [ "amdgpu" ];
services.xserver.videoDrivers = [ "amdgpu" ];
hardware.opengl = {
	# Mesa
	enable = true;

	# Vulkan
	driSupport = true;
	#32-Bit apps
	driSupport32Bit = true;
};
}
