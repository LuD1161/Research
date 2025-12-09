.class public final enum Lcom/google/gson/q$b;
.super Lcom/google/gson/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/q;-><init>(Ljava/lang/String;ILcom/google/gson/q$a;)V

    return-void
.end method


# virtual methods
.method public b(LD2/a;)Ljava/lang/Number;
    .locals 1

    new-instance v0, Lcom/google/gson/internal/f;

    invoke-virtual {p1}, LD2/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/internal/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
