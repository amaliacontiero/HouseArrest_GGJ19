/// @description  Delete surfaces
// This is done so there is no memory leak
surface_free(surf_start);
surface_free(surf_end);

