.class public final synthetic Li1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/b;


# instance fields
.field public final synthetic a:LY2/j$d;


# direct methods
.method public synthetic constructor <init>(LY2/j$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/g;->a:LY2/j$d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Li1/g;->a:LY2/j$d;

    invoke-static {v0, p1, p2}, Li1/l;->b(LY2/j$d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
