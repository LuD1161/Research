.class public final Lcom/google/android/gms/internal/clearcut/K$d;
.super Lcom/google/android/gms/internal/clearcut/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final d:Ljava/nio/ByteBuffer;

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/clearcut/K;-><init>(Lcom/google/android/gms/internal/clearcut/L;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/K$d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/K$d;->f:I

    return-void
.end method


# virtual methods
.method public final D(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/K;->s0(I)V

    return-void
.end method

.method public final D0(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/clearcut/h1;->c(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/K$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/K$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final F(ILcom/google/android/gms/internal/clearcut/y;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/clearcut/K;->V(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/clearcut/K;->k(ILcom/google/android/gms/internal/clearcut/y;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    return-void
.end method

.method public final G(ILcom/google/android/gms/internal/clearcut/B0;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/clearcut/K;->V(II)V

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/clearcut/K;->l(ILcom/google/android/gms/internal/clearcut/B0;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    return-void
.end method

.method public final H(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/K;->e(B)V

    return-void
.end method

.method public final I(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/clearcut/K$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/K$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final J(Lcom/google/android/gms/internal/clearcut/B0;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/clearcut/B0;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/K;->s0(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/clearcut/B0;->a(Lcom/google/android/gms/internal/clearcut/K;)V

    return-void
.end method

.method public final Q(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/K;->r0(I)V

    return-void
.end method

.method public final R(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/K;->W(J)V

    return-void
.end method

.method public final V(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/K;->s0(I)V

    return-void
.end method

.method public final W(J)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/clearcut/K$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/K$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/K;->c([BII)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final c([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/clearcut/K$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/K$c;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/clearcut/K$c;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/clearcut/K$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c0(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/K;->u0(I)V

    return-void
.end method

.method public final e(B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/K$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/K$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/K;->x0(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/K;->x0(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/K$d;->D0(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/K;->s0(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/clearcut/h1;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/K;->s0(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/K$d;->D0(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/clearcut/k1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/clearcut/K$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/K$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/clearcut/K;->q(Ljava/lang/String;Lcom/google/android/gms/internal/clearcut/k1;)V

    return-void
.end method

.method public final j(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/K;->I(J)V

    return-void
.end method

.method public final k(ILcom/google/android/gms/internal/clearcut/y;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/K;->o(Lcom/google/android/gms/internal/clearcut/y;)V

    return-void
.end method

.method public final l(ILcom/google/android/gms/internal/clearcut/B0;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/K;->J(Lcom/google/android/gms/internal/clearcut/B0;)V

    return-void
.end method

.method public final m(ILcom/google/android/gms/internal/clearcut/B0;Lcom/google/android/gms/internal/clearcut/R0;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/clearcut/K;->p(Lcom/google/android/gms/internal/clearcut/B0;Lcom/google/android/gms/internal/clearcut/R0;)V

    return-void
.end method

.method public final n(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/clearcut/K;->D(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/clearcut/K;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/clearcut/y;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/y;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/K;->s0(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/clearcut/y;->v(Lcom/google/android/gms/internal/clearcut/x;)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/clearcut/B0;Lcom/google/android/gms/internal/clearcut/R0;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/clearcut/p;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/p;->d()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/clearcut/R0;->i(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/p;->c(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/K;->s0(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K;->a:Lcom/google/android/gms/internal/clearcut/M;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/clearcut/R0;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/t1;)V

    return-void
.end method

.method public final r0(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/K;->s0(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/clearcut/K;->I(J)V

    return-void
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final s0(I)V
    .locals 2

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/clearcut/K$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/K$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final u0(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/K$d;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/K$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/K$c;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
