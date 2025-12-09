.class public final LU1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/gms/internal/vision/x;

.field public final synthetic g:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;ILcom/google/android/gms/internal/vision/x;)V
    .locals 0

    iput-object p1, p0, LU1/a;->g:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

    iput p2, p0, LU1/a;->e:I

    iput-object p3, p0, LU1/a;->f:Lcom/google/android/gms/internal/vision/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LU1/a;->g:Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;

    invoke-static {v0}, Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;->zza(Lcom/google/android/gms/vision/clearcut/DynamiteClearcutLogger;)Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;

    move-result-object v0

    iget v1, p0, LU1/a;->e:I

    iget-object v2, p0, LU1/a;->f:Lcom/google/android/gms/internal/vision/x;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza(ILcom/google/android/gms/internal/vision/x;)V

    return-void
.end method
