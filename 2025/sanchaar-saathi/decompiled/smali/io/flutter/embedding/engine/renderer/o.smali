.class public final Lio/flutter/embedding/engine/renderer/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/view/TextureRegistry$SurfaceProducer;
.implements Lio/flutter/view/TextureRegistry$GLTextureConsumer;


# instance fields
.field public final a:J

.field public b:I

.field public c:I

.field public d:Z

.field public e:Landroid/view/Surface;

.field public final f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

.field public final g:Landroid/os/Handler;

.field public final h:Lio/flutter/embedding/engine/FlutterJNI;


# direct methods
.method public constructor <init>(JLandroid/os/Handler;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/flutter/embedding/engine/renderer/o;->a:J

    iput-object p3, p0, Lio/flutter/embedding/engine/renderer/o;->g:Landroid/os/Handler;

    iput-object p4, p0, Lio/flutter/embedding/engine/renderer/o;->h:Lio/flutter/embedding/engine/FlutterJNI;

    iput-object p5, p0, Lio/flutter/embedding/engine/renderer/o;->f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/o;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/flutter/embedding/engine/renderer/o;->release()V

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/o;->g:Landroid/os/Handler;

    new-instance v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;

    iget-wide v2, p0, Lio/flutter/embedding/engine/renderer/o;->a:J

    iget-object v4, p0, Lio/flutter/embedding/engine/renderer/o;->h:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v1, v2, v3, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$g;-><init>(JLio/flutter/embedding/engine/FlutterJNI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lio/flutter/embedding/engine/renderer/o;->c:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/o;->e:Landroid/view/Surface;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/o;->f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {v1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/o;->e:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/o;->e:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/o;->f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lio/flutter/embedding/engine/renderer/o;->b:I

    return v0
.end method

.method public handlesCropAndRotation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public id()J
    .locals 2

    iget-wide v0, p0, Lio/flutter/embedding/engine/renderer/o;->a:J

    return-wide v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/o;->f:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->release()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/o;->d:Z

    return-void
.end method

.method public scheduleFrame()V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/o;->h:Lio/flutter/embedding/engine/FlutterJNI;

    iget-wide v1, p0, Lio/flutter/embedding/engine/renderer/o;->a:J

    invoke-virtual {v0, v1, v2}, Lio/flutter/embedding/engine/FlutterJNI;->markTextureFrameAvailable(J)V

    return-void
.end method

.method public setCallback(Lio/flutter/view/TextureRegistry$SurfaceProducer$a;)V
    .locals 0

    return-void
.end method

.method public setSize(II)V
    .locals 1

    iput p1, p0, Lio/flutter/embedding/engine/renderer/o;->b:I

    iput p2, p0, Lio/flutter/embedding/engine/renderer/o;->c:I

    invoke-virtual {p0}, Lio/flutter/embedding/engine/renderer/o;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method
