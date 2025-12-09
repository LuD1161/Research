.class public final LR0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LZ0/m;


# direct methods
.method public constructor <init>(LZ0/m;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/v;->a:LZ0/m;

    return-void
.end method


# virtual methods
.method public final a()LZ0/m;
    .locals 1

    iget-object v0, p0, LR0/v;->a:LZ0/m;

    return-object v0
.end method
