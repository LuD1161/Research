.class public final LE3/b;
.super Ll3/a;
.source "SourceFile"

# interfaces
.implements LD3/G;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, LD3/G;->a:LD3/G$a;

    invoke-direct {p0, v0}, Ll3/a;-><init>(Ll3/i$c;)V

    iput-object p0, p0, LE3/b;->_preHandler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public s(Ll3/i;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
