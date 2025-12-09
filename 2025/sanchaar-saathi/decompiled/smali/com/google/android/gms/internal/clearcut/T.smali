.class public abstract Lcom/google/android/gms/internal/clearcut/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/clearcut/P;

.field public static final b:Lcom/google/android/gms/internal/clearcut/P;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/Q;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/Q;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/T;->a:Lcom/google/android/gms/internal/clearcut/P;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/T;->a()Lcom/google/android/gms/internal/clearcut/P;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/T;->b:Lcom/google/android/gms/internal/clearcut/P;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/clearcut/P;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.ExtensionSchemaFull"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/P;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/clearcut/P;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/T;->a:Lcom/google/android/gms/internal/clearcut/P;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/clearcut/P;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/clearcut/T;->b:Lcom/google/android/gms/internal/clearcut/P;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
