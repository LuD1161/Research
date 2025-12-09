.class public LN2/n;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/n;


# instance fields
.field public c:Z

.field public d:Z

.field public e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field public f:Landroid/view/Surface;

.field public final g:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LN2/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LN2/n;->c:Z

    .line 4
    iput-boolean p1, p0, LN2/n;->d:Z

    .line 5
    new-instance p1, LN2/n$a;

    invoke-direct {p1, p0}, LN2/n$a;-><init>(LN2/n;)V

    iput-object p1, p0, LN2/n;->g:Landroid/view/TextureView$SurfaceTextureListener;

    .line 6
    invoke-direct {p0}, LN2/n;->o()V

    return-void
.end method

.method public static synthetic e(LN2/n;Z)Z
    .locals 0

    iput-boolean p1, p0, LN2/n;->c:Z

    return p1
.end method

.method public static synthetic f(LN2/n;)Z
    .locals 0

    invoke-direct {p0}, LN2/n;->q()Z

    move-result p0

    return p0
.end method

.method public static synthetic g(LN2/n;)V
    .locals 0

    invoke-direct {p0}, LN2/n;->m()V

    return-void
.end method

.method public static synthetic h(LN2/n;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, LN2/n;->l(II)V

    return-void
.end method

.method public static synthetic i(LN2/n;)V
    .locals 0

    invoke-direct {p0}, LN2/n;->n()V

    return-void
.end method

.method public static synthetic j(LN2/n;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, LN2/n;->f:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic k(LN2/n;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, LN2/n;->f:Landroid/view/Surface;

    return-object p1
.end method

.method private l(II)V
    .locals 2

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying FlutterRenderer that Android surface size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterTextureView"

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->A(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "changeSurfaceSize() should only be called when flutterRenderer is non-null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LN2/n;->f:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, LN2/n;->f:Landroid/view/Surface;

    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, LN2/n;->f:Landroid/view/Surface;

    iget-object v1, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-boolean v2, p0, LN2/n;->d:Z

    invoke-virtual {v1, v0, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->y(Landroid/view/Surface;Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connectSurfaceToRenderer() should only be called when flutterRenderer and getSurfaceTexture() are non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->z()V

    iget-object v0, p0, LN2/n;->f:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, LN2/n;->f:Landroid/view/Surface;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, LN2/n;->g:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LN2/n;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const-string v1, "FlutterTextureView"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting FlutterRenderer from Android surface."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, LN2/n;->n()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    goto :goto_0

    :cond_1
    const-string v0, "detachFromRenderer() invoked when no FlutterRenderer was attached."

    invoke-static {v1, v0}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const-string v1, "FlutterTextureView"

    if-nez v0, :cond_0

    const-string v0, "resume() invoked when no FlutterRenderer was attached."

    invoke-static {v1, v0}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, LN2/n;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Surface is available for rendering. Connecting FlutterRenderer to Android surface."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, LN2/n;->m()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, LN2/n;->d:Z

    return-void
.end method

.method public c(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2

    const-string v0, "Attaching to FlutterRenderer."

    const-string v1, "FlutterTextureView"

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    const-string v0, "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one."

    invoke-static {v1, v0}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->z()V

    :cond_0
    iput-object p1, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {p0}, LN2/n;->b()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-nez v0, :cond_0

    const-string v0, "FlutterTextureView"

    const-string v1, "pause() invoked when no FlutterRenderer was attached."

    invoke-static {v0, v1}, LM2/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LN2/n;->d:Z

    return-void
.end method

.method public getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    iget-object v0, p0, LN2/n;->e:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, LN2/n;->c:Z

    return v0
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, LN2/n;->f:Landroid/view/Surface;

    return-void
.end method
