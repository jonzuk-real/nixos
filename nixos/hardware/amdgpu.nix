{


boot.initrd.kernelModules = [ "amdgpu" ];
services.xserver.videoDrivers = [ "amdgpu" ];
hardware.graphics = {
	# Mesa
	enable = true;

	# Vulkan
#	driSupport = true;
	#32-Bit apps
	enable32Bit = true;
};
}
