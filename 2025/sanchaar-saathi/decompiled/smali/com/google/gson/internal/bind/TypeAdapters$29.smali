.class Lcom/google/gson/internal/bind/TypeAdapters$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters;->a(LC2/a;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LC2/a;

.field public final synthetic f:Lcom/google/gson/TypeAdapter;


# direct methods
.method public constructor <init>(LC2/a;Lcom/google/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->e:LC2/a;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->f:Lcom/google/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;LC2/a;)Lcom/google/gson/TypeAdapter;
    .locals 0

    iget-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->e:LC2/a;

    invoke-virtual {p2, p1}, LC2/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->f:Lcom/google/gson/TypeAdapter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
