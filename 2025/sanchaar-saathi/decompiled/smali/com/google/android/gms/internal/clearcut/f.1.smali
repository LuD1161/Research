.class public final synthetic Lcom/google/android/gms/internal/clearcut/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/m;


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/e;

.field public final b:Lcom/google/android/gms/internal/clearcut/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/e;Lcom/google/android/gms/internal/clearcut/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/f;->a:Lcom/google/android/gms/internal/clearcut/e;

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/f;->b:Lcom/google/android/gms/internal/clearcut/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/f;->a:Lcom/google/android/gms/internal/clearcut/e;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/f;->b:Lcom/google/android/gms/internal/clearcut/c;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/c;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/e;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
