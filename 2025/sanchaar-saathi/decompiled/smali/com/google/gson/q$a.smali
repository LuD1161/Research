.class public final enum Lcom/google/gson/q$a;
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
.method public bridge synthetic b(LD2/a;)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/q$a;->f(LD2/a;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public f(LD2/a;)Ljava/lang/Double;
    .locals 2

    invoke-virtual {p1}, LD2/a;->s()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
