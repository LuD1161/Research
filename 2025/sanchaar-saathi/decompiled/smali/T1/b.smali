.class public final LT1/b;
.super LS1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LT1/b$a;
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/internal/vision/g2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/g2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LS1/b;-><init>()V

    .line 2
    iput-object p1, p0, LT1/b;->c:Lcom/google/android/gms/internal/vision/g2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/vision/g2;LT1/e;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LT1/b;-><init>(Lcom/google/android/gms/internal/vision/g2;)V

    return-void
.end method


# virtual methods
.method public final a(LS1/c;)Landroid/util/SparseArray;
    .locals 11

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/C2;->d(LS1/c;)Lcom/google/android/gms/internal/vision/C2;

    move-result-object v0

    invoke-virtual {p1}, LS1/c;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, LT1/b;->c:Lcom/google/android/gms/internal/vision/g2;

    invoke-virtual {p1}, LS1/c;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/vision/g2;->f(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/vision/C2;)[LT1/a;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Internal barcode detector error; check logcat output."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, LS1/c;->d()[Landroid/media/Image$Plane;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, LS1/c;->d()[Landroid/media/Image$Plane;

    move-result-object v1

    invoke-static {v1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/Image$Plane;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v10, Lcom/google/android/gms/internal/vision/C2;

    invoke-virtual {p1}, LS1/c;->d()[Landroid/media/Image$Plane;

    move-result-object p1

    invoke-static {p1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/Image$Plane;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    iget v5, v0, Lcom/google/android/gms/internal/vision/C2;->f:I

    iget v6, v0, Lcom/google/android/gms/internal/vision/C2;->g:I

    iget-wide v7, v0, Lcom/google/android/gms/internal/vision/C2;->h:J

    iget v9, v0, Lcom/google/android/gms/internal/vision/C2;->i:I

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/vision/C2;-><init>(IIIJI)V

    iget-object p1, p0, LT1/b;->c:Lcom/google/android/gms/internal/vision/g2;

    invoke-static {v1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v10}, Lcom/google/android/gms/internal/vision/g2;->g(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/vision/C2;)[LT1/a;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LS1/c;->b()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v1, p0, LT1/b;->c:Lcom/google/android/gms/internal/vision/g2;

    invoke-static {p1}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/vision/g2;->g(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/vision/C2;)[LT1/a;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    iget-object v4, v3, LT1/a;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No frame supplied."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LT1/b;->c:Lcom/google/android/gms/internal/vision/g2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/D2;->c()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    invoke-super {p0}, LS1/b;->d()V

    iget-object v0, p0, LT1/b;->c:Lcom/google/android/gms/internal/vision/g2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/D2;->d()V

    return-void
.end method
