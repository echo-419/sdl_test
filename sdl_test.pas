        
program Chapter4_SDL2;

uses SDL2,SDL2_image;

var
        sdlWindow1 : PSDL_Window;
        sdlRenderer : PSDL_Renderer;
        sdlTexture1 : PSDL_Texture;

begin

//initialisation
if SDL_Init( SDL_INIT_VIDEO ) < 0 then HALT;

sdlWindow1 := SDL_CreateWindow( 'Window1', 50, 50, 500, 300, SDL_WINDOW_SHOWN );             //emplacement dans l'ecrant et taille de fenetre
if sdlWindow1 = nil then HALT;
sdlRenderer := SDL_CreateRenderer( sdlWindow1, -1, 0 );
if sdlRenderer = nil then HALT;

sdlTexture1 := IMG_LoadTexture( sdlRenderer, 'C:\FPC\3.0.0\bin\i386-win32\image\halo.bmp' );    //chemin de l'image
if sdlTexture1 = nil then HALT;
SDL_RenderCopy( sdlRenderer, sdlTexture1, nil, nil );
SDL_RenderPresent (sdlRenderer);
SDL_Delay( 20000 );                                                                             //temps d'affichage

SDL_DestroyTexture( sdlTexture1 );
SDL_DestroyRenderer( sdlRenderer );
SDL_DestroyWindow ( sdlWindow1 );


SDL_Quit;



end.
