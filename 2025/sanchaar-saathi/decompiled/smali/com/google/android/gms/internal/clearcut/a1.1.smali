.class public final Lcom/google/android/gms/internal/clearcut/a1;
.super Lcom/google/android/gms/internal/clearcut/Y0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/Y0;-><init>()V

    return-void
.end method

.method public static m(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/Z0;)V
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/a0;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/a0;->zzjp:Lcom/google/android/gms/internal/clearcut/Z0;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/Z0;

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/Z0;->e(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;ILcom/google/android/gms/internal/clearcut/y;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/Z0;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/Z0;->e(ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/t1;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/Z0;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/Z0;->g(Lcom/google/android/gms/internal/clearcut/t1;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/a0;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/a0;->zzjp:Lcom/google/android/gms/internal/clearcut/Z0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Z0;->k()V

    return-void
.end method

.method public final synthetic e(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/t1;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/Z0;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/Z0;->b(Lcom/google/android/gms/internal/clearcut/t1;)V

    return-void
.end method

.method public final synthetic f()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/Z0;->i()Lcom/google/android/gms/internal/clearcut/Z0;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/clearcut/Z0;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/a1;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/Z0;)V

    return-void
.end method

.method public final synthetic h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/clearcut/Z0;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/a1;->m(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/Z0;)V

    return-void
.end method

.method public final synthetic i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/Z0;

    check-cast p2, Lcom/google/android/gms/internal/clearcut/Z0;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/Z0;->h()Lcom/google/android/gms/internal/clearcut/Z0;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/clearcut/Z0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/clearcut/Z0;->a(Lcom/google/android/gms/internal/clearcut/Z0;Lcom/google/android/gms/internal/clearcut/Z0;)Lcom/google/android/gms/internal/clearcut/Z0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic j(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/Z0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Z0;->d()I

    move-result p1

    return p1
.end method

.method public final synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/a0;

    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/a0;->zzjp:Lcom/google/android/gms/internal/clearcut/Z0;

    return-object p1
.end method

.method public final synthetic l(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/Z0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Z0;->j()I

    move-result p1

    return p1
.end method
