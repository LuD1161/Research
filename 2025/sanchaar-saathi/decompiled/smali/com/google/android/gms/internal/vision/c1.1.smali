.class public abstract Lcom/google/android/gms/internal/vision/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/vision/c1;

.field public static final b:Lcom/google/android/gms/internal/vision/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/e1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/e1;-><init>(Lcom/google/android/gms/internal/vision/f1;)V

    sput-object v0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/c1;

    new-instance v0, Lcom/google/android/gms/internal/vision/h1;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/h1;-><init>(Lcom/google/android/gms/internal/vision/f1;)V

    sput-object v0, Lcom/google/android/gms/internal/vision/c1;->b:Lcom/google/android/gms/internal/vision/c1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/vision/f1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/c1;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/vision/c1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/c1;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/vision/c1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/c1;->b:Lcom/google/android/gms/internal/vision/c1;

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method

.method public abstract d(Ljava/lang/Object;J)V
.end method
