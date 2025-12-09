.class public Lio/flutter/plugin/platform/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/platform/l;


# instance fields
.field public final a:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

.field public b:Landroid/graphics/SurfaceTexture;

.field public c:Landroid/view/Surface;

.field public d:I

.field public e:I

.field public f:Z

.field public final g:Lio/flutter/view/TextureRegistry$b;


# direct methods
.method public constructor <init>(Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/plugin/platform/B;->d:I

    iput v0, p0, Lio/flutter/plugin/platform/B;->e:I

    iput-boolean v0, p0, Lio/flutter/plugin/platform/B;->f:Z

    new-instance v0, Lio/flutter/plugin/platform/B$a;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/B$a;-><init>(Lio/flutter/plugin/platform/B;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/B;->g:Lio/flutter/view/TextureRegistry$b;

    iput-object p1, p0, Lio/flutter/plugin/platform/B;->a:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {p1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/plugin/platform/B;->b:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->setOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$b;)V

    return-void
.end method

.method public static synthetic c(Lio/flutter/plugin/platform/B;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/flutter/plugin/platform/B;->f:Z

    return p1
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iput p1, p0, Lio/flutter/plugin/platform/B;->d:I

    iput p2, p0, Lio/flutter/plugin/platform/B;->e:I

    iget-object v0, p0, Lio/flutter/plugin/platform/B;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/B;->a:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Landroid/view/Surface;
    .locals 2

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lio/flutter/plugin/platform/B;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/B;->c:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lio/flutter/plugin/platform/B;->f:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/B;->c:Landroid/view/Surface;

    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/platform/B;->d()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/B;->c:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/platform/B;->f:Z

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lio/flutter/plugin/platform/B;->e:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    invoke-virtual {p0}, Lio/flutter/plugin/platform/B;->e()V

    iget-object v0, p0, Lio/flutter/plugin/platform/B;->b:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/B;->c:Landroid/view/Surface;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lio/flutter/plugin/platform/B;->d:I

    return v0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/B;->b:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lio/flutter/plugin/platform/B;->c:Landroid/view/Surface;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lio/flutter/plugin/platform/B;->c:Landroid/view/Surface;

    :cond_0
    return-void
.end method
