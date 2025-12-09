.class public final Lcom/google/android/gms/internal/vision/f2;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/d1;
.implements Ljava/util/RandomAccess;


# instance fields
.field public final e:Lcom/google/android/gms/internal/vision/d1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/f2;->e:Lcom/google/android/gms/internal/vision/d1;

    return-void
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/vision/f2;)Lcom/google/android/gms/internal/vision/d1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/f2;->e:Lcom/google/android/gms/internal/vision/d1;

    return-object p0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/vision/d1;
    .locals 0

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/f2;->e:Lcom/google/android/gms/internal/vision/d1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/d1;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/f2;->e:Lcom/google/android/gms/internal/vision/d1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/d1;->f(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/f2;->e:Lcom/google/android/gms/internal/vision/d1;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/i2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/i2;-><init>(Lcom/google/android/gms/internal/vision/f2;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/e2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/vision/e2;-><init>(Lcom/google/android/gms/internal/vision/f2;I)V

    return-object v0
.end method

.method public final n(Lcom/google/android/gms/internal/vision/g0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/f2;->e:Lcom/google/android/gms/internal/vision/d1;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
