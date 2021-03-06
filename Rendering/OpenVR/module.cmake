set(_impl)
if (VTK_OPENVR_OBJECT_FACTORY)
  set (_impl vtkRenderingOpenGL2)
endif()

vtk_module(vtkRenderingOpenVR
  BACKEND
    OpenGL2
  DEPENDS
    vtksys
    vtkCommonCore
    vtkCommonSystem
    vtkRenderingOpenGL2
    vtkRenderingVolumeOpenGL2
    vtkInteractionStyle
    vtkInteractionWidgets
    vtkIOImage
    vtkIOXMLParser
  IMPLEMENTS
    vtkRenderingCore
    ${_impl}
  PRIVATE_DEPENDS
    vtkglew
    vtkImagingSources
    vtkFiltersSources
    vtkIOXML
  TEST_DEPENDS
    vtkTestingCore
    vtkTestingRendering
    vtkInteractionWidgets
    vtkRenderingVolume
    vtkIOPLY
    vtkIOXML
)
