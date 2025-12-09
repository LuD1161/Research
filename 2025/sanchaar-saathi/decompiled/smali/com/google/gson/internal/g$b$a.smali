.class public Lcom/google/gson/internal/g$b$a;
.super Lcom/google/gson/internal/g$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/g$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Lcom/google/gson/internal/g$b;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/g$b$a;->i:Lcom/google/gson/internal/g$b;

    iget-object p1, p1, Lcom/google/gson/internal/g$b;->e:Lcom/google/gson/internal/g;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/g$d;-><init>(Lcom/google/gson/internal/g;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lcom/google/gson/internal/g$d;->c()Lcom/google/gson/internal/g$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/gson/internal/g$b$a;->d()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
