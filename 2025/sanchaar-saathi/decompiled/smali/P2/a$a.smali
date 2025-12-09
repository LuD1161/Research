.class public LP2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LP2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LP2/a;


# direct methods
.method public constructor <init>(LP2/a;)V
    .locals 0

    iput-object p1, p0, LP2/a$a;->a:LP2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;LY2/b$b;)V
    .locals 1

    iget-object p2, p0, LP2/a$a;->a:LP2/a;

    sget-object v0, LY2/q;->b:LY2/q;

    invoke-virtual {v0, p1}, LY2/q;->c(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, LP2/a;->g(LP2/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, LP2/a$a;->a:LP2/a;

    invoke-static {p1}, LP2/a;->h(LP2/a;)LP2/a$e;

    return-void
.end method
