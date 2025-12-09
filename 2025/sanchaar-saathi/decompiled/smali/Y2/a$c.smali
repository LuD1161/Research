.class public final LY2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LY2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:LY2/a$e;

.field public final synthetic b:LY2/a;


# direct methods
.method public constructor <init>(LY2/a;LY2/a$e;)V
    .locals 0

    .line 2
    iput-object p1, p0, LY2/a$c;->b:LY2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, LY2/a$c;->a:LY2/a$e;

    return-void
.end method

.method public synthetic constructor <init>(LY2/a;LY2/a$e;LY2/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LY2/a$c;-><init>(LY2/a;LY2/a$e;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, LY2/a$c;->a:LY2/a$e;

    iget-object v1, p0, LY2/a$c;->b:LY2/a;

    invoke-static {v1}, LY2/a;->a(LY2/a;)LY2/h;

    move-result-object v1

    invoke-interface {v1, p1}, LY2/h;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LY2/a$e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicMessageChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LY2/a$c;->b:LY2/a;

    invoke-static {v1}, LY2/a;->b(LY2/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle message reply"

    invoke-static {v0, v1, p1}, LM2/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
