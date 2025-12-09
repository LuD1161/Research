.class public final Lcom/google/android/gms/internal/vision/c2;
.super Lcom/google/android/gms/internal/vision/a2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/a2;-><init>()V

    return-void
.end method

.method public static m(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/d2;)V
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/vision/N0;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/N0;->zzb:Lcom/google/android/gms/internal/vision/d2;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/vision/d2;->g()Lcom/google/android/gms/internal/vision/d2;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/d2;

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/d2;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/g0;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/d2;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/d2;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic d(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/d2;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/d2;->h(Lcom/google/android/gms/internal/vision/y2;)V

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/vision/d2;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/c2;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/d2;)V

    return-void
.end method

.method public final synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/N0;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/N0;->zzb:Lcom/google/android/gms/internal/vision/d2;

    return-object p1
.end method

.method public final synthetic g(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/d2;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/d2;->e(Lcom/google/android/gms/internal/vision/y2;)V

    return-void
.end method

.method public final synthetic h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/vision/d2;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/c2;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/d2;)V

    return-void
.end method

.method public final synthetic i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/vision/d2;

    check-cast p2, Lcom/google/android/gms/internal/vision/d2;

    invoke-static {}, Lcom/google/android/gms/internal/vision/d2;->a()Lcom/google/android/gms/internal/vision/d2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/d2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/d2;->b(Lcom/google/android/gms/internal/vision/d2;Lcom/google/android/gms/internal/vision/d2;)Lcom/google/android/gms/internal/vision/d2;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/N0;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/N0;->zzb:Lcom/google/android/gms/internal/vision/d2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/d2;->i()V

    return-void
.end method

.method public final synthetic k(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/d2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/d2;->j()I

    move-result p1

    return p1
.end method

.method public final synthetic l(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/vision/d2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/d2;->k()I

    move-result p1

    return p1
.end method
