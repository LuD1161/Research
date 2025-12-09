.class public Lf1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/a$d;,
        Lf1/a$e;,
        Lf1/a$c;,
        Lf1/a$b;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;

.field public c:Landroid/hardware/Camera;

.field public d:I

.field public e:I

.field public f:Ly1/a;

.field public g:F

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/Thread;

.field public m:Lf1/a$d;

.field public n:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf1/a;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lf1/a;->d:I

    const/high16 v0, 0x41f00000    # 30.0f

    .line 5
    iput v0, p0, Lf1/a;->g:F

    const/16 v0, 0x400

    .line 6
    iput v0, p0, Lf1/a;->h:I

    const/16 v0, 0x300

    .line 7
    iput v0, p0, Lf1/a;->i:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lf1/a;->j:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lf1/a;->k:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf1/a;->n:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lf1/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf1/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf1/a;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lf1/a;->a:Landroid/content/Context;

    return-object p1
.end method

.method public static synthetic b(Lf1/a;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lf1/a;->c:Landroid/hardware/Camera;

    return-object p0
.end method

.method public static synthetic c(Lf1/a;F)F
    .locals 0

    iput p1, p0, Lf1/a;->g:F

    return p1
.end method

.method public static synthetic d(Lf1/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lf1/a;->n:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic e(Lf1/a;)I
    .locals 0

    iget p0, p0, Lf1/a;->e:I

    return p0
.end method

.method public static synthetic f(Lf1/a;)Ly1/a;
    .locals 0

    iget-object p0, p0, Lf1/a;->f:Ly1/a;

    return-object p0
.end method

.method public static synthetic g(Lf1/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lf1/a;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h(Lf1/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lf1/a;->k:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic i(Lf1/a;I)I
    .locals 0

    iput p1, p0, Lf1/a;->h:I

    return p1
.end method

.method public static synthetic j(Lf1/a;I)I
    .locals 0

    iput p1, p0, Lf1/a;->i:I

    return p1
.end method

.method public static synthetic k(Lf1/a;I)I
    .locals 0

    iput p1, p0, Lf1/a;->d:I

    return p1
.end method

.method public static synthetic l(Lf1/a;)Lf1/a$d;
    .locals 0

    iget-object p0, p0, Lf1/a;->m:Lf1/a$d;

    return-object p0
.end method

.method public static synthetic m(Lf1/a;Lf1/a$d;)Lf1/a$d;
    .locals 0

    iput-object p1, p0, Lf1/a;->m:Lf1/a$d;

    return-object p1
.end method

.method public static s(I)I
    .locals 3

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static t(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 12

    int-to-double v0, p2

    int-to-double v2, p1

    div-double/2addr v0, v2

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v5, v3

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v7, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    sub-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    goto :goto_0

    :cond_2
    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v5

    if-gez v8, :cond_1

    iget p1, v7, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v5, p1

    move-object p1, v7

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    iget p1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v1, p1

    move-object p1, v0

    move-wide v3, v1

    goto :goto_1

    :cond_5
    return-object p1
.end method

.method public static x(Landroid/hardware/Camera;II)Lf1/a$e;
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lf1/a;->t(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object p0

    new-instance p1, Lf1/a$e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lf1/a$e;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    return-object p1
.end method


# virtual methods
.method public A(Landroid/view/SurfaceHolder;)Lf1/a;
    .locals 2

    iget-object v0, p0, Lf1/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf1/a;->n()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    new-instance p1, Ljava/lang/Thread;

    iget-object v1, p0, Lf1/a;->m:Lf1/a$d;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lf1/a;->l:Ljava/lang/Thread;

    iget-object p1, p0, Lf1/a;->m:Lf1/a$d;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lf1/a$d;->b(Z)V

    iget-object p1, p0, Lf1/a;->l:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public B()V
    .locals 3

    iget-object v0, p0, Lf1/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf1/a;->m:Lf1/a$d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf1/a$d;->b(Z)V

    iget-object v1, p0, Lf1/a;->l:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    iput-object v2, p0, Lf1/a;->l:Ljava/lang/Thread;

    :cond_0
    iget-object v1, p0, Lf1/a;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    iget-object v1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iput-object v2, p0, Lf1/a;->c:Landroid/hardware/Camera;

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final n()Landroid/hardware/Camera;
    .locals 6

    iget v0, p0, Lf1/a;->d:I

    invoke-static {v0}, Lf1/a;->s(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iget v2, p0, Lf1/a;->h:I

    iget v3, p0, Lf1/a;->i:I

    invoke-static {v1, v2, v3}, Lf1/a;->x(Landroid/hardware/Camera;II)Lf1/a$e;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lf1/a$e;->a()Ly1/a;

    move-result-object v3

    invoke-virtual {v2}, Lf1/a$e;->b()Ly1/a;

    move-result-object v2

    iput-object v2, p0, Lf1/a;->f:Ly1/a;

    iget v2, p0, Lf1/a;->g:F

    invoke-virtual {p0, v1, v2}, Lf1/a;->w(Landroid/hardware/Camera;F)[I

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ly1/a;->b()I

    move-result v5

    invoke-virtual {v3}, Ly1/a;->a()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_0
    iget-object v3, p0, Lf1/a;->f:Ly1/a;

    invoke-virtual {v3}, Ly1/a;->b()I

    move-result v3

    iget-object v5, p0, Lf1/a;->f:Ly1/a;

    invoke-virtual {v5}, Ly1/a;->a()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v4, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v2, 0x11

    invoke-virtual {v4, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    invoke-virtual {p0, v1, v4, v0}, Lf1/a;->z(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V

    iget-object v0, p0, Lf1/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lf1/a;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf1/a;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf1/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lf1/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lf1/a;->k:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lf1/a;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf1/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance v0, Lf1/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lf1/a$c;-><init>(Lf1/a;Lf1/a$a;)V

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lf1/a;->f:Ly1/a;

    invoke-virtual {p0, v0}, Lf1/a;->o(Ly1/a;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lf1/a;->f:Ly1/a;

    invoke-virtual {p0, v0}, Lf1/a;->o(Ly1/a;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lf1/a;->f:Ly1/a;

    invoke-virtual {p0, v0}, Lf1/a;->o(Ly1/a;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v0, p0, Lf1/a;->f:Ly1/a;

    invoke-virtual {p0, v0}, Lf1/a;->o(Ly1/a;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find suitable preview frames per second range."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find suitable preview size."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not find requested camera."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o(Ly1/a;)[B
    .locals 4

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    invoke-virtual {p1}, Ly1/a;->a()I

    move-result v1

    invoke-virtual {p1}, Ly1/a;->b()I

    move-result p1

    mul-int/2addr v1, p1

    mul-int/2addr v1, v0

    int-to-long v0, v1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lf1/a;->n:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create valid buffer for camera source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(F)I
    .locals 6

    iget-object v0, p0, Lf1/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_2

    int-to-float v4, v4

    div-int/lit8 v5, v3, 0xa

    int-to-float v5, v5

    mul-float/2addr p1, v5

    add-float/2addr v4, p1

    goto :goto_0

    :cond_2
    int-to-float v4, v4

    mul-float/2addr v4, p1

    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    if-le p1, v3, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, p1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object p1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lf1/a;->d:I

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf1/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ly1/a;
    .locals 1

    iget-object v0, p0, Lf1/a;->f:Ly1/a;

    return-object v0
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lf1/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lf1/a;->B()V

    iget-object v1, p0, Lf1/a;->m:Lf1/a$d;

    invoke-virtual {v1}, Lf1/a$d;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final w(Landroid/hardware/Camera;F)[I
    .locals 5

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    aget v3, v2, v3

    sub-int v3, p2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    sub-int v4, p2, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_0

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public y(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lf1/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf1/a;->c:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object v2, p0, Lf1/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iput-object p1, p0, Lf1/a;->k:Ljava/lang/String;

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final z(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V
    .locals 4

    iget-object v0, p0, Lf1/a;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10e

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    :cond_3
    :goto_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget p3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p3, v1, :cond_4

    iget p3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p3, v2

    rem-int/lit16 p3, p3, 0x168

    rsub-int v0, p3, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_4
    iget p3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p3, v2

    add-int/lit16 p3, p3, 0x168

    rem-int/lit16 p3, p3, 0x168

    move v0, p3

    :goto_1
    div-int/lit8 v1, p3, 0x5a

    iput v1, p0, Lf1/a;->e:I

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-virtual {p2, p3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    return-void
.end method
