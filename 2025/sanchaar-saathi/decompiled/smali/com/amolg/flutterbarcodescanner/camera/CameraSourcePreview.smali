.class public Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$b;
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public d:Landroid/view/SurfaceView;

.field public e:Z

.field public f:Z

.field public g:Lf1/a;

.field public h:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->c:Landroid/content/Context;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->e:Z

    iput-boolean p2, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->f:Z

    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->d:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$b;-><init>(Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$a;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->d:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;)V
    .locals 0

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const-string v0, "CameraSourcePreview"

    const-string v1, "isPortraitMode returning false by default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g:Lf1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf1/a;->v()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g:Lf1/a;

    :cond_0
    return-void
.end method

.method public e(Lf1/a;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->h()V

    :cond_0
    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g:Lf1/a;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->e:Z

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g()V

    :cond_1
    return-void
.end method

.method public f(Lf1/a;Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;)V
    .locals 0

    iput-object p2, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->h:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-virtual {p0, p1}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->e(Lf1/a;)V

    return-void
.end method

.method public final g()V
    .locals 4

    iget-boolean v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g:Lf1/a;

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf1/a;->A(Landroid/view/SurfaceHolder;)Lf1/a;

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->h:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g:Lf1/a;

    invoke-virtual {v0}, Lf1/a;->u()Ly1/a;

    move-result-object v0

    invoke-virtual {v0}, Ly1/a;->b()I

    move-result v1

    invoke-virtual {v0}, Ly1/a;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Ly1/a;->b()I

    move-result v2

    invoke-virtual {v0}, Ly1/a;->a()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->h:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    iget-object v3, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g:Lf1/a;

    invoke-virtual {v3}, Lf1/a;->q()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->d(III)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->h:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    iget-object v3, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g:Lf1/a;

    invoke-virtual {v3}, Lf1/a;->q()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->d(III)V

    :goto_0
    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->h:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->b()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->e:Z

    :cond_2
    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g:Lf1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf1/a;->B()V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    const-string p1, "CameraSourcePreview"

    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int v0, p5, p3

    sub-int v1, p4, p2

    goto :goto_0

    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    :goto_0
    iget-object v2, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g:Lf1/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lf1/a;->u()Ly1/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ly1/a;->b()I

    move-result v0

    invoke-virtual {v2}, Ly1/a;->a()I

    move-result v1

    :cond_1
    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v1

    move v1, v0

    move v0, v3

    :cond_2
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    int-to-float p2, p4

    int-to-float p3, v0

    div-float/2addr p2, p3

    int-to-float v0, v1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    if-le p2, p5, :cond_3

    int-to-float p2, p5

    div-float/2addr p2, v0

    mul-float/2addr p2, p3

    float-to-int p4, p2

    goto :goto_1

    :cond_3
    move p5, p2

    :goto_1
    const/4 p2, 0x0

    move p3, p2

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_4

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->g()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string p3, "Could not start camera source."

    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception p2

    const-string p3, "Do not have permission to start the camera"

    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
