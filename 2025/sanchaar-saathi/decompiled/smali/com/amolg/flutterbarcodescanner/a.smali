.class public Lcom/amolg/flutterbarcodescanner/a;
.super LS1/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amolg/flutterbarcodescanner/a$b;
    }
.end annotation


# instance fields
.field public a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

.field public b:Le1/a;

.field public c:I

.field public d:Lcom/amolg/flutterbarcodescanner/a$b;

.field public e:Landroid/os/Handler;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;Le1/a;Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, LS1/f;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amolg/flutterbarcodescanner/a;->f:Z

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/a;->a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    iput-object p2, p0, Lcom/amolg/flutterbarcodescanner/a;->b:Le1/a;

    iput p4, p0, Lcom/amolg/flutterbarcodescanner/a;->c:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amolg/flutterbarcodescanner/a;->e:Landroid/os/Handler;

    instance-of p1, p3, Lcom/amolg/flutterbarcodescanner/a$b;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/amolg/flutterbarcodescanner/a$b;

    iput-object p3, p0, Lcom/amolg/flutterbarcodescanner/a;->d:Lcom/amolg/flutterbarcodescanner/a$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Hosting activity must implement BarcodeUpdateListener"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic e(Lcom/amolg/flutterbarcodescanner/a;)Lcom/amolg/flutterbarcodescanner/a$b;
    .locals 0

    iget-object p0, p0, Lcom/amolg/flutterbarcodescanner/a;->d:Lcom/amolg/flutterbarcodescanner/a$b;

    return-object p0
.end method

.method public static synthetic f(Lcom/amolg/flutterbarcodescanner/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amolg/flutterbarcodescanner/a;->f:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/a;->a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    iget-object v1, p0, Lcom/amolg/flutterbarcodescanner/a;->b:Le1/a;

    invoke-virtual {v0, v1}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->c(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;)V

    return-void
.end method

.method public b(LS1/b$a;)V
    .locals 1

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/a;->a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/a;->b:Le1/a;

    invoke-virtual {p1, v0}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->c(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;)V

    return-void
.end method

.method public bridge synthetic c(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, LT1/a;

    invoke-virtual {p0, p1, p2}, Lcom/amolg/flutterbarcodescanner/a;->g(ILT1/a;)V

    return-void
.end method

.method public bridge synthetic d(LS1/b$a;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, LT1/a;

    invoke-virtual {p0, p1, p2}, Lcom/amolg/flutterbarcodescanner/a;->h(LS1/b$a;LT1/a;)V

    return-void
.end method

.method public g(ILT1/a;)V
    .locals 1

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/a;->b:Le1/a;

    invoke-virtual {v0, p1}, Le1/a;->c(I)V

    invoke-virtual {p0, p2}, Lcom/amolg/flutterbarcodescanner/a;->i(LT1/a;)V

    return-void
.end method

.method public h(LS1/b$a;LT1/a;)V
    .locals 1

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/a;->a:Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/a;->b:Le1/a;

    invoke-virtual {p1, v0}, Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay;->a(Lcom/amolg/flutterbarcodescanner/camera/GraphicOverlay$a;)V

    iget-object p1, p0, Lcom/amolg/flutterbarcodescanner/a;->b:Le1/a;

    invoke-virtual {p1, p2}, Le1/a;->d(LT1/a;)V

    invoke-virtual {p0, p2}, Lcom/amolg/flutterbarcodescanner/a;->i(LT1/a;)V

    return-void
.end method

.method public final i(LT1/a;)V
    .locals 4

    iget-boolean v0, p0, Lcom/amolg/flutterbarcodescanner/a;->f:Z

    const-string v1, "BarcodeGraphicTracker"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amolg/flutterbarcodescanner/a;->f:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Barcode detected, waiting for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amolg/flutterbarcodescanner/a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/amolg/flutterbarcodescanner/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/amolg/flutterbarcodescanner/a$a;

    invoke-direct {v1, p0, p1}, Lcom/amolg/flutterbarcodescanner/a$a;-><init>(Lcom/amolg/flutterbarcodescanner/a;LT1/a;)V

    iget p1, p0, Lcom/amolg/flutterbarcodescanner/a;->c:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "Still waiting, ignoring new detection"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
