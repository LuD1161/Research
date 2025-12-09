.class public final Lcom/google/android/gms/internal/vision/g2;
.super Lcom/google/android/gms/internal/vision/D2;
.source "SourceFile"


# instance fields
.field public final i:Lcom/google/android/gms/internal/vision/i1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/i1;)V
    .locals 2

    const-string v0, "BarcodeNativeHandle"

    const-string v1, "barcode"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/vision/D2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/g2;->i:Lcom/google/android/gms/internal/vision/i1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/D2;->e()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    const-string v0, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/vision/z2;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/vision/z2;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/vision/B2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/vision/B2;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p2}, LF1/b;->K(Ljava/lang/Object;)LF1/a;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/vision/g2;->i:Lcom/google/android/gms/internal/vision/i1;

    invoke-static {p2}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/vision/i1;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/vision/z2;->h(LF1/a;Lcom/google/android/gms/internal/vision/i1;)Lcom/google/android/gms/internal/vision/H1;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/D2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/D2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/H1;

    invoke-static {v0}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/H1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/H1;->a()V

    :cond_0
    return-void
.end method

.method public final f(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/vision/C2;)[LT1/a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/D2;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [LT1/a;

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, LF1/b;->K(Ljava/lang/Object;)LF1/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/D2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/H1;

    invoke-static {v0}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/H1;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/vision/H1;->l(LF1/a;Lcom/google/android/gms/internal/vision/C2;)[LT1/a;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "BarcodeNativeHandle"

    const-string v0, "Error calling native barcode detector"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [LT1/a;

    return-object p1
.end method

.method public final g(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/vision/C2;)[LT1/a;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/D2;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [LT1/a;

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, LF1/b;->K(Ljava/lang/Object;)LF1/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/D2;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/H1;

    invoke-static {v0}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/H1;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/vision/H1;->r(LF1/a;Lcom/google/android/gms/internal/vision/C2;)[LT1/a;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "BarcodeNativeHandle"

    const-string v0, "Error calling native barcode detector"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [LT1/a;

    return-object p1
.end method
