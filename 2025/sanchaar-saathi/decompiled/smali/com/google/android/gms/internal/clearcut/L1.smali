.class public final Lcom/google/android/gms/internal/clearcut/L1;
.super Lcom/google/android/gms/common/api/internal/a;
.source "SourceFile"


# instance fields
.field public final p:Lt1/f;


# direct methods
.method public constructor <init>(Lt1/f;Lv1/f;)V
    .locals 1

    sget-object v0, Lt1/a;->p:Lv1/a;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/a;-><init>(Lv1/a;Lv1/f;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/L1;->p:Lt1/f;

    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/google/android/gms/common/api/Status;)Lv1/j;
    .locals 0

    return-object p1
.end method

.method public final synthetic i(Lv1/a$b;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/clearcut/P1;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/O1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/clearcut/O1;-><init>(Lcom/google/android/gms/internal/clearcut/L1;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/L1;->p:Lt1/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lt1/f;->m:Lcom/google/android/gms/internal/clearcut/M1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/y1;->e()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/google/android/gms/internal/clearcut/y1;->b(Lcom/google/android/gms/internal/clearcut/y1;[BII)V

    iput-object v4, v1, Lt1/f;->f:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lz1/d;->C()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/T1;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/L1;->p:Lt1/f;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/clearcut/T1;->i(Lcom/google/android/gms/internal/clearcut/R1;Lt1/f;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/a;->m(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
