.class public LX2/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LX2/t;


# direct methods
.method public constructor <init>(LX2/t;)V
    .locals 0

    iput-object p1, p0, LX2/t$a;->c:LX2/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 4

    iget-object v0, p0, LX2/t$a;->c:LX2/t;

    invoke-static {v0}, LX2/t;->a(LX2/t;)LX2/t$b;

    move-result-object v0

    const-string v1, "ScribeChannel"

    if-nez v0, :cond_0

    const-string p1, "No ScribeMethodHandler registered. Scribe call not handled."

    invoke-static {v1, p1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, LY2/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Scribe.isStylusHandwritingAvailable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "Scribe.startStylusHandwriting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Scribe.isFeatureAvailable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-interface {p2}, LY2/j$d;->c()V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, LX2/t$a;->c:LX2/t;

    invoke-static {v0, p1, p2}, LX2/t;->c(LX2/t;LY2/i;LY2/j$d;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, LX2/t$a;->c:LX2/t;

    invoke-static {v0, p1, p2}, LX2/t;->d(LX2/t;LY2/i;LY2/j$d;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, LX2/t$a;->c:LX2/t;

    invoke-static {v0, p1, p2}, LX2/t;->b(LX2/t;LY2/i;LY2/j$d;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2a11fcff -> :sswitch_2
        0x68dc8e5d -> :sswitch_1
        0x7e58a2bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
