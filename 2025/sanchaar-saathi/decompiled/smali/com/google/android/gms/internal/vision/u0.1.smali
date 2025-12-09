.class public final Lcom/google/android/gms/internal/vision/u0;
.super Lcom/google/android/gms/internal/vision/t0;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/t0;-><init>(Lcom/google/android/gms/internal/vision/s0;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/vision/u0;->j:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/u0;->d:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/vision/u0;->f:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/vision/u0;->h:I

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/vision/u0;->i:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/vision/u0;->e:Z

    return-void
.end method

.method public synthetic constructor <init>([BIIZLcom/google/android/gms/internal/vision/s0;)V
    .locals 0

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/gms/internal/vision/u0;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/t0;->e()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/vision/u0;->j:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/vision/u0;->j:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/u0;->f()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->b()Lcom/google/android/gms/internal/vision/W0;

    move-result-object p1

    throw p1
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/vision/u0;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/u0;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/vision/u0;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/u0;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/vision/u0;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/u0;->i:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/vision/u0;->j:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/vision/u0;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/vision/u0;->f:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/vision/u0;->g:I

    return-void
.end method
