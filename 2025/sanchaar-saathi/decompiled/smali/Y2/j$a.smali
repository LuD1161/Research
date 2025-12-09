.class public final LY2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LY2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:LY2/j$c;

.field public final synthetic b:LY2/j;


# direct methods
.method public constructor <init>(LY2/j;LY2/j$c;)V
    .locals 0

    iput-object p1, p0, LY2/j$a;->b:LY2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LY2/j$a;->a:LY2/j$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;LY2/b$b;)V
    .locals 4

    iget-object v0, p0, LY2/j$a;->b:LY2/j;

    invoke-static {v0}, LY2/j;->a(LY2/j;)LY2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LY2/k;->e(Ljava/nio/ByteBuffer;)LY2/i;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, LY2/j$a;->a:LY2/j$c;

    new-instance v1, LY2/j$a$a;

    invoke-direct {v1, p0, p2}, LY2/j$a$a;-><init>(LY2/j$a;LY2/b$b;)V

    invoke-interface {v0, p1, v1}, LY2/j$c;->onMethodCall(LY2/i;LY2/j$d;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LY2/j$a;->b:LY2/j;

    invoke-static {v1}, LY2/j;->b(LY2/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle method call"

    invoke-static {v0, v1, p1}, LM2/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, LY2/j$a;->b:LY2/j;

    invoke-static {v0}, LY2/j;->a(LY2/j;)LY2/k;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, LM2/b;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "error"

    invoke-interface {v0, v3, v1, v2, p1}, LY2/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/b$b;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
