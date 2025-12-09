.class public abstract Lcom/google/android/gms/internal/clearcut/J0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/clearcut/H0;

.field public static final b:Lcom/google/android/gms/internal/clearcut/H0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/J0;->c()Lcom/google/android/gms/internal/clearcut/H0;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/J0;->a:Lcom/google/android/gms/internal/clearcut/H0;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/I0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/I0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/J0;->b:Lcom/google/android/gms/internal/clearcut/H0;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/clearcut/H0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/J0;->a:Lcom/google/android/gms/internal/clearcut/H0;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/clearcut/H0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/J0;->b:Lcom/google/android/gms/internal/clearcut/H0;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/clearcut/H0;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/H0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
