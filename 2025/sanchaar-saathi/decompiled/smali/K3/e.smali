.class public final LK3/e;
.super LK3/g;
.source "SourceFile"


# static fields
.field public static final a:LK3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK3/e;

    invoke-direct {v0}, LK3/e;-><init>()V

    sput-object v0, LK3/e;->a:LK3/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LK3/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
