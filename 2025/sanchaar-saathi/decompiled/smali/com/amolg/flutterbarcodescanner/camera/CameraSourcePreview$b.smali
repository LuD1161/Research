.class public Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;


# direct methods
.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$b;->a:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$b;-><init>(Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string p1, "CameraSourcePreview"

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$b;->a:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->a(Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$b;->a:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

    invoke-static {v0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->b(Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    const-string v1, "Could not start camera source."

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    const-string v1, "Do not have permission to start the camera"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview$b;->a:Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;->a(Lcom/amolg/flutterbarcodescanner/camera/CameraSourcePreview;Z)Z

    return-void
.end method
