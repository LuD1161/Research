.class public Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lt1/a;

.field private zzb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    new-instance v0, Lt1/a;

    const-string v1, "VISION"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lt1/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:Lt1/a;

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/vision/x;)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/X;->j()[B

    move-result-object p2

    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:Lt1/a;

    invoke-virtual {v1, p2}, Lt1/a;->a([B)Lt1/a$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lt1/a$a;->b(I)Lt1/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lt1/a$a;->a()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/x;->w()Lcom/google/android/gms/internal/vision/x$a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/A0;->c()Lcom/google/android/gms/internal/vision/A0;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/google/android/gms/internal/vision/W;->l([BIILcom/google/android/gms/internal/vision/A0;)Lcom/google/android/gms/internal/vision/W;

    const-string p2, "Would have logged:\n%s"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, LS1/d;->b(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    :try_start_2
    const-string p2, "Parsing error"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, LS1/d;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/f;->b(Ljava/lang/Throwable;)V

    const-string p2, "Failed to log"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, LS1/d;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Illegal event code: %d"

    invoke-static {p2, p1}, LS1/d;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
