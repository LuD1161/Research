.class public final Lcom/google/android/gms/internal/clearcut/o0;
.super Lcom/google/android/gms/internal/clearcut/l0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/clearcut/l0;-><init>(Lcom/google/android/gms/internal/clearcut/m0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/clearcut/m0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/o0;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/clearcut/f0;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/f1;->M(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/f0;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/o0;->e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/clearcut/f0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/clearcut/f0;->m()V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/clearcut/o0;->e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/clearcut/f0;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/clearcut/o0;->e(Ljava/lang/Object;J)Lcom/google/android/gms/internal/clearcut/f0;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/f0;->j()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/clearcut/f0;->h(I)Lcom/google/android/gms/internal/clearcut/f0;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    :cond_2
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/clearcut/f1;->i(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
