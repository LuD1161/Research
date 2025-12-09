.class public abstract Lcom/google/android/gms/internal/vision/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# static fields
.field public static final f:Lcom/google/android/gms/internal/vision/g0;

.field public static final g:Lcom/google/android/gms/internal/vision/m0;

.field public static final h:Ljava/util/Comparator;


# instance fields
.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/r0;

    sget-object v1, Lcom/google/android/gms/internal/vision/R0;->c:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/r0;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/vision/g0;->f:Lcom/google/android/gms/internal/vision/g0;

    invoke-static {}, Lcom/google/android/gms/internal/vision/Z;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/vision/q0;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/q0;-><init>(Lcom/google/android/gms/internal/vision/f0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/k0;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/k0;-><init>(Lcom/google/android/gms/internal/vision/f0;)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/vision/g0;->g:Lcom/google/android/gms/internal/vision/m0;

    new-instance v0, Lcom/google/android/gms/internal/vision/i0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/i0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/g0;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/vision/g0;->e:I

    return-void
.end method

.method public static C(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static D(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x42

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static F(I)Lcom/google/android/gms/internal/vision/p0;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/p0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/vision/p0;-><init>(ILcom/google/android/gms/internal/vision/f0;)V

    return-object v0
.end method

.method public static synthetic u(B)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/g0;->C(B)I

    move-result p0

    return p0
.end method

.method public static x(Ljava/lang/String;)Lcom/google/android/gms/internal/vision/g0;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/r0;

    sget-object v1, Lcom/google/android/gms/internal/vision/R0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/r0;-><init>([B)V

    return-object v0
.end method

.method public static y([BII)Lcom/google/android/gms/internal/vision/g0;
    .locals 2

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/g0;->D(III)I

    new-instance v0, Lcom/google/android/gms/internal/vision/r0;

    sget-object v1, Lcom/google/android/gms/internal/vision/g0;->g:Lcom/google/android/gms/internal/vision/m0;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/vision/m0;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/r0;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract A(Lcom/google/android/gms/internal/vision/d0;)V
.end method

.method public abstract B(I)B
.end method

.method public final E()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/R0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/g0;->t()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/g0;->z(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract G()Z
.end method

.method public final H()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/g0;->e:I

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/vision/g0;->e:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/g0;->t()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/vision/g0;->v(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/vision/g0;->e:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/f0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/f0;-><init>(Lcom/google/android/gms/internal/vision/g0;)V

    return-object v0
.end method

.method public abstract s(I)B
.end method

.method public abstract t()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/g0;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/g0;->t()I

    move-result v3

    const/16 v4, 0x32

    if-gt v3, v4, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/X1;->a(Lcom/google/android/gms/internal/vision/g0;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/vision/g0;->w(II)Lcom/google/android/gms/internal/vision/g0;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/X1;->a(Lcom/google/android/gms/internal/vision/g0;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract v(III)I
.end method

.method public abstract w(II)Lcom/google/android/gms/internal/vision/g0;
.end method

.method public abstract z(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method
